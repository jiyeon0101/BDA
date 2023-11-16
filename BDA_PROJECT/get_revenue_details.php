<?php
$storeId = $_GET['store_id'];

$mysqli = mysqli_connect("127.0.0.1", "root", "", "review3");

if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
} else {
    // Use a prepared statement to avoid SQL injection
    $sql = "SELECT * FROM store_revenue WHERE store_ID = ?";
    $stmt = mysqli_prepare($mysqli, $sql);

    // Bind the parameter
    mysqli_stmt_bind_param($stmt, "i", $storeId);

    // Execute the statement
    $res = mysqli_stmt_execute($stmt);

    if ($res) {
        // Bind the result variables
        mysqli_stmt_bind_result($stmt, $store_ID, $income, $expenses, $revenue, $revenue_status);

        // Fetch the details
        mysqli_stmt_fetch($stmt);

        // Output the details
        echo "Total Expenses: " . $expenses . "<br>";
        echo "Total Income: " . $income . "<br>";
        echo "Store ID: " . $store_ID . "<br>";
        echo "Revenue: " . $revenue . "<br>";
        echo "Revenue Status: " . $revenue_status . "<br>";
    } else {
        echo "Error: " . mysqli_error($mysqli);
    }

    // Close the statement
    mysqli_stmt_close($stmt);
    mysqli_close($mysqli);
}
?>