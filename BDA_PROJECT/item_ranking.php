<?php
// Database connection
$servername = "127.0.0.1";
$username = "root";
$password = "";
$dbname = "restaurant_data";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch all products from the database
$sqlProducts = "SELECT * FROM Items";
$resultProducts = $conn->query($sqlProducts);

// Fetch top 3 best-selling products based on monthly sales (you need to implement this logic)
$sqlTopSellers = "SELECT item_name, SUM(price) as total_sales FROM Items GROUP BY item_name ORDER BY total_sales DESC LIMIT 3";
$resultTopSellers = $conn->query($sqlTopSellers);


$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MENU</title>
    <style>
        <!-- Your CSS styling goes here -->

        body {
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
        }

        h1 {
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }


    </style>
</head>
<body>
    <div class="container">
        <h1>MENU</h1>

        <!-- Display all products in a table -->
        <h2>All Items</h2>
        <table>
            <tr>
                <th>Item ID</th>
                <th>Item Name</th>
                <th>Price</th>
                <th>Category</th>
                <th>Size</th>
                <th>Ingredients List</th>
            </tr>
            <?php
            // Generate HTML rows for each product
            while ($row = $resultProducts->fetch_assoc()) {
                echo "<tr>";
                echo "<td>{$row['item_ID']}</td>";
                echo "<td>{$row['item_name']}</td>";
                echo "<td>{$row['price']}</td>";
                echo "<td>{$row['item_category']}</td>";
                echo "<td>{$row['item_size']}</td>";
                echo "<td>{$row['ingredients_list']}</td>";
                echo "</tr>";
            }
            ?>
        </table>

        <!-- Display top 3 best-selling products in a table -->
        <h2>Top 3 Best Sellers</h2>
        <table>
            <tr>
                <th>Item Name</th>
                <th>Total Sales</th>
            </tr>
            <?php
            // Generate HTML rows for the top 3 best-selling products
            while ($row = $resultTopSellers->fetch_assoc()) {
                echo "<tr>";
                echo "<td>{$row['item_name']}</td>";
                echo "<td>{$row['total_sales']}</td>";
                echo "</tr>";
            }
            ?>
        </table>
    </div>
</body>
</html>
