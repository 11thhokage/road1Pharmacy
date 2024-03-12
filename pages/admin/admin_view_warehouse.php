<?php
include '../../database/config.php';
include '../../actions/session_check.php';

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <?php include "ham.php";?>
    <div class="height-100 bg-light">

<h1>Stocks:</h1>
<center>
<form method='GET' action='../../actions/admin/admin_search_item.php'>

    <input type='text' name='search'>
    <input type='submit' name='submit' value='search Warehouse'>
</form>
</center>
<hr />

  <div class='container'>
            <div class='row'>
            
<?php
// Check if the query was successful
$get_items = "SELECT item_name FROM items;";
$items_result = mysqli_query($conn, $get_items);
if (!$items_result) {
    die('Error in query: '. mysqli_error($conn));
}
echo"<h2><center>Item List</center></h2>
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
                                            <th scope='col'>Item Name</th>
                                            <th scope='col'>Item Qty</th>
                                            <th scope='col'>Vendor Name</th>
                                            <th scope='col'>Details </th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>";
    // output data of each row
    while ($item_row = mysqli_fetch_assoc($items_result)) {
    $item_name = $item_row["item_name"];
    $data = "SELECT SUM(item_qty) AS total_qty, vendor_name FROM warehouse WHERE item_name = '$item_name' GROUP BY item_name;";
    $warehouse_result = mysqli_query($conn, $data);

    if (!$warehouse_result) {
        die('Error in query: ' . mysqli_error($conn));
    }

   $warehouse_row = mysqli_fetch_assoc($warehouse_result);
    if ($warehouse_row) {
        // Item exists in the warehouse, get the summed quantity
        $item_qty = $warehouse_row['total_qty'];
        $vendor_name = $warehouse_row['vendor_name'];
    } else {
        // Item does not exist in the warehouse, display quantity as zero
        $item_qty = 0;
        $vendor_name = "-";
    }

    echo "<tr>";
    echo "<td class ='item_name'>" . $item_name . "</td>";
    if($item_qty == 0){
    echo "<td style= 'color:red;'>" . $item_qty . "</td>";
    echo "<td>" . $vendor_name . "</td>";
    echo"<td></td>";
}else{
    echo "<td>". $item_qty. "</td>";
    echo "<td>" . $vendor_name . "</td>";
    echo "<td scope='col' class=''> "."<a href='#' class='btn btn-info view_details'>View Details</a>"."</td>";
}
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

    





?>
    
                                        <?php
                                        
                                            
                                        ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <br/>

<div class="modal fade custom-fade" id="viewDetailsModal" tabindex="-1" role="dialog" aria-labelledby="viewDetailsModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg custom-modal-center" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="viewDetailsModalLabel">View Details</h5>
      </div>
      <div class="modal-body">
        <div class="view_form">


        </div>
      </div>
    </div>
  </div>
</div>



    </div>
</body>
<!-- Load the full jQuery build first -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

<!-- Then load Popper.js and Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="admin.js"></script>
<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
</html>


<script>
$(document).ready(function(){
  $('.view_details').click(function(e){
    e.preventDefault();
    var item_name = $(this).closest('tr').find('td.item_name').text();
   
    // console.log(item_name);

    $.ajax({
        method:"POST",
        url: "../../actions/admin/admin_view_warehouse_details.php",
        data:{
            'click_view_details': true,
            'item_name': item_name
        },
        success: function(response){
            

            $('.view_form').html(response);
            $('#viewDetailsModal').modal('show');
        }
    });
  });
});
</script>


