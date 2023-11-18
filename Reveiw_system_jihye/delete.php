<?php session_start(); ?>

<?php
    require_once("../BDA_PROJECT/config.php");
    $pdo = db_connect();

    
    try {
        $pdo->beginTransaction();
        $sql = 'DELETE FROM inventory WHERE stock_name = :stock_name';
        echo "nomal";
        $stmt = $pdo->prepare($sql);
        $stmt->bindValue(':stock_name', $_POST['stock_name'], PDO::PARAM_STR);
        $stmt->execute();
        $pdo->commit();
        echo '삭제가 성공적으로 이루어졌습니다.';
    } catch (PDOException $e) {
        $pdo->rollBack();
        echo '삭제 도중 오류가 발생했습니다: ' . $e->getMessage();
    }
    
    
    // 세션 변수를 전부 삭제합니다.
    $_SESSION = array();
    // 마지막으로 세션을 파기합니다.
    session_destroy();
    header('location: inventory.php');
?>