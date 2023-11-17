<?php
// initializing variables
$item_name = "";
$item_price = "";

// connect to the database
$db = mysqli_connect('localhost', 'root', '', 'restaurant_data');

if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

// Delete item
if (isset($_POST['delete'])) {
    // receive all input values from the form
    $param = mysqli_real_escape_string($db, $_POST['stock_name']);

    // Use prepared statement to prevent SQL injection
    $query = "DELETE FROM inventory WHERE stock_name=?";
    $stmt = mysqli_prepare($db, $query);

    // Bind parameter
    mysqli_stmt_bind_param($stmt, "s", $param);

    // Execute the statement
    if (mysqli_stmt_execute($stmt)) {
        echo "<script>alert('Successfully deleted');</script>";
    } else {
        echo "<script>alert('Something went wrong!');</script>";
    }

    // Close the statement
    mysqli_stmt_close($stmt);

    header('location: inventory.php');
}
?>