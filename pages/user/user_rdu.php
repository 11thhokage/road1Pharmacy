<?php
include '../../database/config.php';
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

//middleware
if(!isset($_SESSION['role_as'])){
   header('location:../index.php');
   exit();
}
$user_name = $_SESSION['user_name'];

// Initialize $subtotal to null
$subtotal = null;

// Check if the form has been submitted
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['date_received'])) {
    $selected_date = $_POST['date_received'];

    // Prepare the SQL query to calculate the sum of subtotals for the selected date
    $query = "SELECT SUM(total) AS total_subtotal FROM deliver_received WHERE date_received = ?";
    $stmt = mysqli_prepare($conn, $query);
    
    // Bind the selected date to the statement
    mysqli_stmt_bind_param($stmt, 's', $selected_date);
    
    // Execute the statement
    mysqli_stmt_execute($stmt);
    
    // Bind the result variable
    mysqli_stmt_bind_result($stmt, $subtotal);
    
    // Fetch the result
    mysqli_stmt_fetch($stmt);
    
    // Close the statement
    mysqli_stmt_close($stmt);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <?php include "user_ham.php";?>
    <!-- Container Main start -->
    <div class="height-100 bg-light">
        <h4>Delivery Received</h4>
        <form action="" method="post">
            <select name="date_received" id="date_received">
                <?php
                $data = "SELECT DISTINCT date_received FROM deliver_received ORDER BY date_received ASC";
                $result = mysqli_query($conn, $data);
                if(mysqli_num_rows($result)> 0){
                    while($row=mysqli_fetch_assoc($result)){
                        $date_received=$row['date_received'];
                        echo"<option value='$date_received'>$date_received</option>";
                    }
                }else{
                    echo "<option value=''>No data found!</option>";
                }
                ?>
            </select>
            <input type="submit" value="Show Total">
        </form>
        <?php
        // Check if $subtotal is not null to print it
        if ($subtotal !== null) {
            echo "Total Subtotal for date received ($selected_date): " . $subtotal;
        }
        ?>
    </div>
    <!-- Container Main end -->


       <!-- Main content -->
       

<!-- Optional JavaScript -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script src="user_ham.js"></script>

</body>
</html>


