<?php
if (!isset($_SESSION['admin_name'])) {
    header('location:../index.php');
    exit();
}
