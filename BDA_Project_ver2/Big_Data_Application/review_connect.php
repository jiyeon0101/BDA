<?php
    // 데이터베이스 연결 및 데이터 가져오기
    include_once "database.php";

    $sql = "SELECT Store_id, value FROM List";
    $result = $dbhandle->query($sql);
?>
