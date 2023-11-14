<?php
$storeId = $_GET['store_id'];

// Perform your SQL query to get details for $storeId
// Replace the following lines with your actual SQL query
$mysqli = mysqli_connect("127.0.0.1", "root", "", "restaurant");
$sql = "SELECT * FROM store_revenue WHERE store_ID = $storeId";
$res = mysqli_query($mysqli, $sql);

if ($res) {
    $details = mysqli_fetch_assoc($res);
    echo "Total Expenses: " . $details['expenses'] . "<br>";
    echo "Total Income: " . $details['income'] . "<br>";
    echo "Store ID: " . $details['store_ID'] . "<br>";
} else {
    echo "Error: " . mysqli_error($mysqli);
}

mysqli_close($mysqli);
?>