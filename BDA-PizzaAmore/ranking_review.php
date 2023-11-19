<?php


include("database.php");

// 각 상점별 평균 랭킹 쿼리
$sql = "SELECT store_id, AVG(ranking) as avg_ranking
            FROM Reviews
            GROUP BY store_id
            ORDER BY avg_ranking ASC";

$result = $dbhandle->query($sql);

// 결과 출력
if ($result->num_rows > 0) {
    echo "<table><tr><th>Store ID</th><th>Average Ranking</th></tr>";
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["store_id"] . "</td><td>" . $row["avg_ranking"] . "</td></tr>";
    }
    echo "</table>";
} else {
    echo "No results found.";
}

// 연결 종료
$dbhandle->close();
?>