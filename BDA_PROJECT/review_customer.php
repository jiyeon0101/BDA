<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="test.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="test.js" defer></script>
    <title>Management</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }

        .section {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .card {
            border: 1px solid #ddd;
            padding: 16px;
            margin: 16px 0;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1, h2 {
            color: #333;
        }

        h2 {
            margin-bottom: 8px;
        }

        span {
            display: block;
            margin-bottom: 8px;
        }
         /* Additional styles for improved layout */
        .top-ranked {
            border: 2px solid #4CAF50;
        }
        .bottom-ranked {
            border: 2px solid red;
        }

        .comments {
            margin-top: 8px;
        }
    </style>
</head>

<body id="page-body">
    <nav>
        <ul>
            <li>
                <a href="" class="logo">
                    <img src="logo.jpg" alt="nav-bars">
                    <span class="nav-item">Menu</span>
                </a>
            </li>
            <li>
                <a href="">
                    <i class="fa-regular fa-user"></i>
                    <span class="nav-item">Profile</span>
                </a>
            </li>
            <li>
                <a href="">
                    <i class="fa-solid fa-shop"></i>
                    <span class="nav-item">Stores</span>
                </a>
            </li>
            <li>
                <a href="ranking_customer.php">
                    <i class="fa-regular fa-star"></i>
                    <span class="nav-item">Ranking</span>
                </a>
            </li>
            <li>
                <a href="">
                    <i class="fa-solid fa-chart-simple"></i>
                    <span class="nav-item">Analytics</span>
                </a>
            </li>
            <div class="logout">
                <li>
                    <a href="settings.html">
                        <i class="fa-solid fa-gear"></i>
                        <span class="nav-item">Settings</span>
                    </a>
                </li>
                <li>
                    <a href="mainpage.html">
                        <i class="fa-solid fa-right-from-bracket"></i>
                        <span class="nav-item">Logout</span>
                    </a>
                </li>
            </div>
        </ul>
    </nav>
    <div class="section">
        <h1>Top 5 Ranking Stores</h1>
        <p>About Ranking store</p>
        <div>
            <?php
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "restaurant_data";

            // MySQL 연결
            $conn = new mysqli($servername, $username, $password, $dbname);

            // 연결 확인
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            // 각 상점별 평균 랭킹 쿼리 (상위 5개만)
            $sql = "SELECT Store.store_ID, Store.store_address, AVG(Reviews.ranking) as avg_ranking
                    FROM Reviews
                    JOIN Store ON Reviews.store_ID = Store.store_ID
                    GROUP BY Store.store_ID
                    ORDER BY avg_ranking DESC
                    LIMIT 5";

            $result = $conn->query($sql);

            // 결과 출력
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    $storeID = $row["store_ID"];
                    $storeAddress = $row["store_address"];
                    $avgRanking = $row["avg_ranking"];

                    echo '<div class="card top-ranked">';
                    echo '<h2>Store ID: ' . $storeID . '</h2>';
                    echo '<span>Store Address: ' . $storeAddress . '</span>';
                    echo '<span>Average Ranking: ' . $avgRanking . '</span>';

                    // 각 상점별 상위 3개 코멘트 쿼리
                    $commentSql = "SELECT comments FROM Reviews WHERE Reviews.store_ID = '$storeID' ORDER BY ranking ASC LIMIT 3";
                    $commentResult = $conn->query($commentSql);

                    // 코멘트 출력
                    echo '<div class="comments">';
                    while ($commentRow = $commentResult->fetch_assoc()) {
                        echo '<p>' . $commentRow["comments"] . '</p>';
                    }
                    echo '</div>';

                    echo '</div>';
                }
            } else {
                echo "No results found.";
            }

            // 연결 종료
            $conn->close();
            ?>
        </div>
    </div>
</body>

</html>