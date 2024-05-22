<?php
include '../../database/config.php';
include '../../actions/session_check.php'; ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- SweetAlert2 CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10">
    </link>
    <!-- Bootstrap Bundle JS (includes Popper.js) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
    <!-- SweetAlert2 JS -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <title>Adjust Item</title>
</head>

<body>
    <?php

    if (isset($_POST['submit_zero'])) {
        $reason = $_POST['reason'];
        $item_name = $_POST['item_name'];
        $qty = $_POST['qty'];
        $expiry_date = $_POST['expiry_date'];
        $date_received = $_POST['date_received'];
        $vendor = $_POST['vendor_name'];

        $insertQuery = "INSERT INTO warehouse (item_name, item_qty, expiry_date, vendor_name) VALUES 
            ('$item_name', '$qty', '$expiry_date', '$vendor')";
        $insertResult = mysqli_query($conn, $insertQuery);
        if ($insertResult) {
            $insertQuery2 = "INSERT INTO deliver_received (receipt_trans_number, vendor_name, date_received, received_by) VALUES 
                ('$reason',  '$vendor', '$date_received','Admin')";
            $insertResult2 = mysqli_query($conn, $insertQuery2);
            if ($insertQuery2) {
                $last_id = $conn->insert_id;
                $insertQuery4 = "INSERT INTO delivered_items (last_id,receipt_trans_number, item_name,  item_qty, expiry_date) VALUES (
                            '$last_id','$reason', '$item_name',  '$qty', '$expiry_date')";
                $insertResult4 = mysqli_query($conn, $insertQuery4);
                if ($insertResult4) {
                    echo "<script>
                            Swal.fire({
                                title: 'Success!',
                                text: 'A new row has been inserted in Warehouse due to NO COMMON Expiry date and Vendor Name.',
                                icon: 'success',
                                confirmButtonText: 'OK'
                            }).then((result) => {
                                if (result.isConfirmed) {
                                    window.location.href = '../../pages/admin/admin_view_warehouse.php';
                                }
                            });
                        </script>";
                } else {
                    echo "Error: " . mysqli_error($conn);
                }
            } else {
                echo "Error: " . mysqli_error($conn);
            }
        } else {
            echo "Error: " . mysqli_error($conn);
        }
    }
    ?>