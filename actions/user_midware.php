<?php
if (!isset($_SESSION['role_as'])) {
    header('location:../index.php');
    exit();
}
