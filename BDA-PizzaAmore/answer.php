<?php
session_start();

// 데이터베이스 연결
include_once "database.php";

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['submit'])) {
    // 사용자가 제출한 질문과 로그인한 사용자의 ID 가져오기
    $question = $_POST['question'];
    $userID = $_SESSION['user_id']; // 로그인 시 저장된 유저 ID

    // 데이터베이스에 질문 저장
    $stmt = $dbhandle->prepare("INSERT INTO questions (user_id, content) VALUES (?, ?)");
    $stmt->bind_param("is", $userID, $question);
    $stmt->execute();

    // 저장 완료 메시지 또는 리디렉션을 여기서 수행할 수 있습니다.
    echo "Question submitted successfully!";
}

$dbhandle->close();
?>
