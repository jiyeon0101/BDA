<?php
$incomeId = $_GET['income_id'];

// Perform your SQL query to get details for $incomeId
// Replace the following lines with your actual SQL query
$mysqli = mysqli_connect("127.0.0.1", "root", "", "review3");
$sql = "SELECT * FROM income WHERE income_ID = $incomeId";
$res = mysqli_query($mysqli, $sql);

if ($res) {
    $details = mysqli_fetch_assoc($res);
    echo "Selected Income ID: " . $details['income_ID'] . "<br>";
    echo "Selling Income: " . $details['selling_income'] . "<br>";
    echo "Store ID: " . $details['store_ID'] . "<br>";
} else {
    echo "Error: " . mysqli_error($mysqli);
}

mysqli_close($mysqli);
?>