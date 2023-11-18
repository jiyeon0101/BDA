<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "restaurant_data";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['signup'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);
    
    // Your password hashing logic here
    // $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    $sql = "INSERT INTO user_customer (username, password) VALUES (?,?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $username, $hashed_password);

    if ($stmt->execute()) {
        echo "Signup successful!";
        // Redirect to the login page after successful signup
        echo '<script>window.location.href = "login_customer.html";</script>';
        exit;
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

$conn->close();
?>
