<?php
if (isset($_GET['mode_of_payment']) && isset($_GET['amount_tendered']) && isset($_GET['items']) && isset($_GET['total']) && isset($_GET['change']) && isset($_GET['curr_user']) && isset($_GET['date_transact']) && isset($_GET['time_transacted'])) {
    $mode_of_payment = $_GET['mode_of_payment'];
    $amount_tendered = $_GET['amount_tendered'];
    $items = json_decode($_GET['items'], true);
    $total = $_GET['total'];
    $change = $_GET['change'];
    $curr_user = $_GET['curr_user'];
    $date_transact = $_GET['date_transact'];
    $time_transacted = $_GET['time_transacted'];

    // Set establishment details
    $establishment_name = "Your Establishment";
    $proprietor = "Proprietor's Name";
    $address = "Address";
    $contact_number = "Contact Number";

    // Set receipt validity
    $validity = "Receipt is valid for 30 days.";

    // Create the receipt text
    $receipt = "----------------------------------------------\n";
    $receipt .= $establishment_name . "\n";
    $receipt .= "Proprietor: " . $proprietor . "\n";
    $receipt .= $address . "\n";
    $receipt .= "Contact: " . $contact_number . "\n";
    $receipt .= "----------------------------------------------\n";
    $receipt .= "Mode of Payment: " . $mode_of_payment . "\n";
    $receipt .= "Amount Tendered: " . $amount_tendered . "\n";
    $receipt .= "----------------------------------------------\n";
    $receipt .= "Items:\n";
    foreach ($items as $item) {
        $receipt .= $item['name'] . " - " . $item['quantity'] . " x " . $item['price'] . "\n";
    }
    $receipt .= "----------------------------------------------\n";
    $receipt .= "Total: " . $total . "\n";
    $receipt .= "Change: " . $change . "\n";
    $receipt .= "----------------------------------------------\n";
    $receipt .= "Transaction Date: " . $date_transact . "\n";
    $receipt .= "Transaction Time: " . $time_transacted . "\n";
    $receipt .= "----------------------------------------------\n";
    $receipt .= $validity . "\n";

    // Set the paper size
    $paper_width = 80; // in mm
    $paper_height = 80; // in mm

    // Open a file for writing
    $file = fopen('receipt.txt', 'w');

    // Write the receipt text to the file
    fwrite($file, $receipt);

    // Close the file
    fclose($file);

    echo "Receipt saved as a printable text file.";
}
