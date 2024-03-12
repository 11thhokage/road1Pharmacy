<?php
include '../../database/config.php';
include '../session_check.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    
<?php
include '../../pages/admin/ham.php';

$curr_user=$_SESSION['role_as'];
echo"<u>Results: </u>&nbsp";


                    if(isset($_REQUEST['submit'])){
                        $search = $_GET['search'];
                        $terms = explode(" ",$search);
                        $data = "SELECT * FROM warehouse WHERE ";
                    
                    if (!empty($terms)) {
                        $i=0;
                        foreach($terms as $each){
                            $i++;
                            if($i==1){
                                $data .= "item_name LIKE '%$each%' ";
                            }else{
                                $data .= "OR item_name LIKE '%$each%' ";
                            }
                        }
                    
                        $query= mysqli_query($conn, $data);
                        if (!$query) {
                            die('Error in SQL query: ' . mysqli_error($conn));
                        }
                        $num = mysqli_num_rows($query);
                        if($num >0 && $search!=""){
                    
                            echo"$num result(s) found for <b>$search</b>!";
                    
                            echo"  <h2><center>Item List</center></h2>
    <section class='intro'>
        <div class='gradient-custom-2 h-100'>
            <div class='mask d-flex align-items-center h-100'>
                <div class='container'>
                    <div class='row justify-content-center'>
                        <div class='col-12'>
                            <div class='table-responsive'>
                                <table class='table table-dark table-bordered mb-0'>
                                    <thead>
                                        <tr>
                                            <th scope='col'>Warehouse Code</th>
                                            <th scope='col'>Item Name</th>
                                            <th scope='col'>Item Qty</th>
                                            <th scope='col'>Expiry Date</th>
                                            <th scope='col'>Vendor Name</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>";
                            
                            while($row = mysqli_fetch_assoc($query)){
                                    $warehouse_code=$row['warehouse_code'];
                                    $item_name_warehouse=$row['item_name'];
                                    $item_qty=$row['item_qty'];
                                    $expiry_date=$row['expiry_date'];
                                    $vendor_name=$row['vendor_name'];
                    
                    echo "<tr>";
                                            echo "<td>" . $warehouse_code. "</td>";
                                            echo "<td>" .$item_name_warehouse . "</td>";
                                            echo "<td>" .$item_qty . "</td>";
                                            echo "<td>" . $expiry_date . "</td>";
                                            echo "<td>" . $vendor_name . "</td>";
                                            echo "</tr>";
                }
                echo"</tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <br/>
        ";
            }else{
                echo "<main role='main' class='col-md-9 ml-sm-auto col-lg-10 px-4 content-wrapper'>
           <div class='content'>
               <script>
               Swal.fire({
                   title: 'Error!',
                   text: 'No results found',
                   icon: 'warning',
                   confirmButtonText: 'Back To Warehouse'
               }).then(() =>{window.location.href = '../../pages/admin/admin_view_warehouse.php';});
               </script>
           </div>
       </main>";
            }
        }else{
            echo"Please type any Word";
        }
        }
                
                         
       
 if($curr_user==='1'){
    echo"<center><a href='../../pages/admin/admin_view_warehouse.php' class='btn btn-info'>Back to Stock View</a></center>";
}else{
   echo "error";
}




?>
</body>
<script src="admin.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</html>
