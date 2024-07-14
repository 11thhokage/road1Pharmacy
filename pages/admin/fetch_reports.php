<?php
session_start();
include '../../actions/admin_midware.php';
// pdo connection
$pdo = new PDO(
    "mysql:host=localhost;dbname=capstone;charset=utf8mb4",
    "root",
    ""
);

$limit = 3; // Limit of records per page
$page = isset($_POST['page']) ? (int)$_POST['page'] : 1;
$start = ($page - 1) * $limit;

// Get the date range from the AJAX request
$startDate = isset($_POST['startDate']) ? $_POST['startDate'] : '';
$endDate = isset($_POST['endDate']) ? $_POST['endDate'] : '';

// Get the total number of records within the date range
$totalQuery = $pdo->prepare("SELECT COUNT(*) FROM reports WHERE date_reported BETWEEN :startDate AND :endDate");
$totalQuery->bindParam(':startDate', $startDate);
$totalQuery->bindParam(':endDate', $endDate);
$totalQuery->execute();
$totalRows = $totalQuery->fetchColumn();
$totalPages = ceil($totalRows / $limit);

$query = $pdo->prepare("SELECT * FROM reports WHERE date_reported BETWEEN :startDate AND :endDate ORDER BY date_reported DESC LIMIT :start, :limit");
$query->bindParam(':startDate', $startDate);
$query->bindParam(':endDate', $endDate);
$query->bindParam(':start', $start, PDO::PARAM_INT);
$query->bindParam(':limit', $limit, PDO::PARAM_INT);
$query->execute();

// Fetch all the rows from the result set
$rows = $query->fetchAll(PDO::FETCH_ASSOC);

// Return the data as a JSON response
$response = [
    'rows' => $rows,
    'totalPages' => $totalPages,
    'currentPage' => $page
];

echo json_encode($response);
