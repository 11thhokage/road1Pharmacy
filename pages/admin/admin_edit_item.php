<?php

include '../../database/config.php';

$data= "SELECT * FROM items";

$result = mysqli_query($conn, $data);

if (!$result) {
    die('Error in query: ' . mysqli_error($conn));
}
while($row=mysqli_fetch_assoc($result)){
    $code=$row['code'];
    $item_name=$row['item_name'];
    $price=$row['price'];
    $unit_type=$row['unit_type'];
    $unit_qty=$row['unit_qty'];
    $picture=$row['picture'];

}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer">
	</head>
    <title>Document</title>

</head>
<body> 
    <h3>Edit Item: <?php echo$_REQUEST['Item_names']; ?> </h3>

    <form action="admin_update_item_price.php" METHOD="POST">
        <h6>Current Price: <?php echo $_REQUEST['Price'];?></h6>
        <input type="text" inputmode="decimal" name="new_price" required placeholder="enter new Price" pattern="[0-9]*[.,]?[0-9]*"><br>
        <input type="hidden" name="code" value=<?php echo$_REQUEST['Codes']?>>
        <input type="submit" name="submit" value="Save And Update" class="form-btn"><br>
    </form>
    <a href="admin_view_items.php" class="btn btn-primary">Cancel</a><br>
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</html>