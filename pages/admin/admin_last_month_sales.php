<?php
include '../../database/config.php';
session_start();

//middleware
if(!isset($_SESSION['admin_name'])){
   header('location:../index.php');
   exit();
}
date_default_timezone_set('Asia/Manila');
$today =  date("Y-m-d"); 
$last_month = date("Y-m-d", strtotime("-30 days")); 
$total_query = "SELECT SUM(amount) as total_amount FROM transactions WHERE date_transacted BETWEEN '$last_month' AND '$today'";
$total_result = mysqli_query($conn, $total_query);
$total_row = mysqli_fetch_assoc($total_result);
$sales = $total_row['total_amount'];


$total_query = "SELECT SUM(total) as total_amount FROM deliver_received WHERE date_received BETWEEN '$last_month' AND '$today'";
$total_result = mysqli_query($conn, $total_query);
$total_row = mysqli_fetch_assoc($total_result);
$capital = $total_row['total_amount'];

$income =  $sales-$capital;
$dataPoints = array( 
	array("y" => $capital, "label" => "Received" ),
	array("y" => $sales, "label" => "Sold" ),
   array("y" => $income, "label" => "Income" )
);

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <?php include "ham.php";?>
   
    
    <div class="height-100 bg-light">
        <div class="container-fluid px-4">
            <div class="row">
               <div class="col-md-12 mb-3">
                  <div class="card">
                     <div class="card-header">
                        <center><h4 class="mb-0">Last 30 days</h4></center>
                     </div>
                     <div class="card-body">
                        
                                                <script>
                        window.onload = function() {
                        
                        var chart = new CanvasJS.Chart("chartContainer", {
                           animationEnabled: true,
                           theme: "light2",
                           title:{
                              text: "Sales"
                           },
                           axisY: {
                              title: "Pesos"
                           },
                           data: [{
                              type: "column",
                              yValueFormatString: "#,##0.## Pesos",
                              dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
                           }]
                        });
                        chart.render();
                        
                        }
                        </script>
                        <div id="chartContainer" style="height: 370px; width: 100%;"></div>
                        <script src="https://cdn.canvasjs.com/canvasjs.min.js"></script>
                     </div>
               </div>
            </div>
        </div>
    </div>
    

<!-- Optional JavaScript -->

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script src="admin.js"></script>

</body>
</html>

