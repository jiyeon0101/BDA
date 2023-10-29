<?php
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['submit'])) {
    // information of connection to db 데이터베이스 연결 정보
    $host = "localhost:3306"; // MySQL host name
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

    // take review data
    $user_name = $_POST['user_name'];
    $user_review = $_POST['user_review'];
    $rating = $_POST['user_rating'];

    // insert data
    $sql = "INSERT INTO reviews (`rating`, `user_name`, `user_review`) VALUES (?, ?, ?)";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([$rating, $user_name, $user_review]);

    // additional process

    echo "Review submitted successfully!";
}
?>
