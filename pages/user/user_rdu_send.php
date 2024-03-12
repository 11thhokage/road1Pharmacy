<?php
include '../../database/config.php';

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <?php include "user_ham.php"; ?>
    <h2><center>Push Order/Report Items</center></h2>
</head>
<body id="main">
   
        <!-- Push Order Form -->
        <select name="form" id="formSelector">
            <option value="">Select Form</option>
            <option value="order">Push Order</option>
            <option value="report">Report Item</option>
        </select>

        <!-- Dynamic Form Inclusion -->
        <div id="formContent">
            <!-- The included form will be displayed here -->
        </div>
    
<script>
    document.getElementById('formSelector').addEventListener('change', function() {
        var selectedForm = this.value;
        var formContentDiv = document.getElementById('formContent');

        // Clear the current content
        formContentDiv.innerHTML = '';

        // Use AJAX to request the server to include the appropriate form
        var xhr = new XMLHttpRequest();
        xhr.open('GET', 'include_form.php?form=' + selectedForm, true); // Correct path to include_form.php
        xhr.onload = function() {
            if (this.status == 200) {
                formContentDiv.innerHTML = this.responseText;
            } else {
                formContentDiv.innerHTML = 'Error loading form.';
            }
        };
        xhr.onerror = function() {
            formContentDiv.innerHTML = 'Error loading form.';
        };
        xhr.send();
    });
</script>
    

    <!-- Existing scripts -->
    <script src="user_ham.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"></script>
</body>
</html>











