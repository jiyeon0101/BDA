<?php
include("review_connect.php");
include("database.php");
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['submit'])) {
    // Database connection information
    $host = "127.0.0.1"; // MySQL host name
    $username = "root"; // MySQL user name
    $password = ""; // MySQL password
    $database = "review3"; // database name

    try {
        $pdo = new PDO("mysql:host=$host;dbname=$database", $username, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $pdo->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
        die();
    }

    // Retrieve review data
    $store_id = $_POST['restaurantDropdown'];
    $user_rating = $_POST['user_rating'];
    $user_comment = $_POST['user_comment'];

    // Insert data
    $sql = "INSERT INTO reviews (user_rating, user_comment, store_ID) VALUES (?, ?, ?)";
    $stmt = $pdo->prepare($sql);

    if ($stmt->execute([$user_rating, $user_comment, $store_id])) {
        echo "Review submitted successfully!";
    } else {
        echo "Error: " . $stmt->errorInfo()[2]; // Display the PDO error message
    }
}
?>