<?php
include '../../database/config.php';?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
   <!-- SweetAlert2 CSS -->
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10"></link>
   <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <title>Add New Item - Admin</title>
</head>
<body>
<?php

if(isset($_POST['submit'])){

    $input_name= mysqli_real_escape_string($conn, $_POST['item_name']);
    $unit_price=$_POST['unit_price'];
    $mark_up=$_POST['mark_up'];  
    $mark_up_dec= $mark_up / 100;

    
    
    //Calculate the cost price by multiplying unit price with mark up percentage
    $price = ($mark_up_dec * $unit_price)+$unit_price;   
    $price = number_format($price,2);
    if(fmod($price, 1) < 0.50) {
    // Round down
    $price = floor($price);
    } else {
        // Round up
        $price = ceil($price);
    }

    $unit_type= $_POST['unit_type'];
    $unit_qty= $_POST['unit_qty'];
    $item_name= $input_name." ".$unit_qty.$unit_type;
    $vendor_name=$_POST['vendor_name'];


    

    $select = "SELECT * FROM items WHERE item_name = '$item_name'";

    $result = mysqli_query($conn, $select);

    if(mysqli_num_rows($result) > 0){
      $error[] = 'Item already exists!';
   }else{
        
            $insert = "INSERT INTO items(item_name,unit_price, mark_up, price, vendor_name) VALUES('$item_name','$unit_price','$mark_up','$price','$vendor_name')";
            mysqli_query($conn, $insert);
            echo "<main role='main' class='col-md-9 ml-sm-auto col-lg-10 px-4 content-wrapper'>
           <div class='content'>
               <script>
               Swal.fire({
                   title: 'Success!',
                   text: 'Added New Item',
                   icon: 'success',
                   confirmButtonText: 'Back To Lists'
               }).then(() =>{window.location.href = 'admin_view_items.php';});
               </script>
           </div>
       </main>";
}
}


?>




<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card mt-5">
                <div class="card-body">
                    <h5 class="text-center">Your One Stop Pharmacy - Admin</h5>
                    <form ENCTYPE="multipart/form-data" action="" method="post">
                        <h3 class="text-center">Add New Item</h3>
                        <?php
                        if(isset($error)){
                            foreach($error as $error){
                                echo '<div class="alert alert-danger">'.$error.'</div>';
                            };
                        };
                        ?>
                        <div class="form-group">
                            <label for="item_name">Item Name</label>
                            <input type="text" class="form-control" name="item_name" required placeholder="Enter Item Name">
                        </div>
                        <div class="form-group">
                            <label for="unit_price">Unit Price</label>
                            <input type="text" class="form-control" inputmode="decimal" name="unit_price" required placeholder="Enter Unit Price" pattern="[0-9]*[.,]?[0-9]*">
                        </div>
                        <div class="form-group">
                            <label for="mark_up">Mark up %</label>
                            <input type="number" class="form-control" name="mark_up" required placeholder="Enter Mark up">
                        </div>
                        <div class="form-group">
                            <label for="unit_type">Unit Type</label>
                            <select class="form-control" name="unit_type" id="">
                                <option value="mg">Milligrams</option>
                                <option value="ml">Milliliters</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="unit_qty">Unit Quantity</label>
                            <input type="number" class="form-control" name="unit_qty" required placeholder="Enter Item unit">
                        </div>
                        <div class="form-group">
                            <label for="vendor_name">Vendor Name</label>
                            <input type="text" class="form-control" name="vendor_name" required placeholder="Enter Vendor Name">
                        </div>
                        <input type="submit" name="submit" value="Add Item" class="btn btn-primary btn-block text">
                    </form>
                    <p class="text-center"><a href="admin_view_items.php" class="btn btn-danger mt-2 btn-block text ">Cancel</a></p>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</html>