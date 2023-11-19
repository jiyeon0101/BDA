<?php
session_start();

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "restaurant_data";

// Database connection
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['submit'])) {
    // Get the submitted question and sanitize input
    $question = htmlspecialchars($_POST['question'], ENT_QUOTES, 'UTF-8');

    // Insert the question into the database
    $stmt = $conn->prepare("INSERT INTO questions (content) VALUES (?)");
    $stmt->bind_param("s", $question);

    if ($stmt->execute()) {
        echo "Question submitted successfully!";
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
}

$conn->close();
?>
