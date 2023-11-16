<?php
$expenseId = $_GET['expense_id'];

// Perform your SQL query to get details for $expenseId
// Replace the following lines with your actual SQL query
$mysqli = mysqli_connect("127.0.0.1", "root", "", "review3");
$sql = "SELECT * FROM expenses WHERE expense_ID = $expenseId";
$res = mysqli_query($mysqli, $sql);

if ($res) {
    $details = mysqli_fetch_assoc($res);
    echo "Selected Expense ID: " . $details['expense_ID'] . "<br>";
    echo "Location Rent: " . $details['location_rent'] . "<br>";
    echo "Water/Electricity Expenses: " . $details['water_electricity_bill'] . "<br>";
    echo "Production Cost: " . $details['production_cost'] . "<br>";
    echo "Maintenance Cost: " . $details['maintenance_cost'] . "<br>";
    echo "Staff Cost: " . $details['staff_cost'] . "<br>";
    echo "Packaging Cost: " . $details['packaging_cost'] . "<br>";
    echo "Store ID: " . $details['store_ID'] . "<br>";
} else {
    echo "Error: " . mysqli_error($mysqli);
}

mysqli_close($mysqli);
?>