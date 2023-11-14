<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="test.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" 
    integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" 
    crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <script src="test.js" defer></script>
    <title>Management</title>
</head>
<body id="page-body">
    <nav>
        <ul>
            <li>
                <a href="test.html" class="logo">
                    <img src="logo.jpg" alt="nav-bars">
                    <span class="nav-item">Menu</span>
                </a>
            </li>
            <li>
                <a href="profile.html">
                    <i class="fa-regular fa-user"></i>
                    <span class="nav-item">Profile</span>
                </a>
            </li>
            <li>
                <a href="stores.html">
                    <i class="fa-solid fa-shop"></i>
                    <span class="nav-item">Stores</span>
                </a>
            </li>
            <li>
                <a href="ranking.php">
                    <i class="fa-regular fa-star"></i>
                    <span class="nav-item">Ranking</span>
                </a>
            </li>
            <li>
                <a href="analytics.html">
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
        <h1>Inventory</h1>
        <br>
        <span>about stock</span>
        <!--search ingredient-->
        <div class="search-container">
            <input type="text" class="search-box">
            <button class="search-button">Search</button>
        </div>
        <!--table of ingredient-->
        <div class="table-box">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table text-dark text-center">
                            <thead class="text-uppercase">
                                <tr class="table-active">
                                    <th scope="col">id</th>
                                    <th scope="col">item</th>
                                    <th scope="col">price</th>
                                    <th scope="col">category</th>
                                    <th scope="col">amount</th>
                                    <th scope="col">ingredients list</th>
                                </tr>
                            </thead>
                        
                        <tbody>
                            <?php
                                $conn = new mysqli("localhost", "root", "", "restaurant_data");
                                $sql = "select item_name, price, item_category, item_size, ingredients_list from items";
                                $reuslt = $conn->query($sql);
                                $count = 0;
                                if ($reuslt->num_rows > 0) {
                                    while ($row = $reuslt->fetch_assoc()) {
                                        $count += 1;
                                ?>

                                <tr>
                                    <th><?php echo $count ?></th>
                                    <th><?php echo $row["item_name"] ?></th>
                                    <th><?php echo $row["price"] ?></th>
                                    <th><?php echo $row["item_category"] ?></th>
                                    <th><?php echo $row["item_size"] ?></th>
                                    <th><?php echo $row["ingredients_list"] ?></th>
                                </tr>

                                <?php
                                    }
                                }
                                ?>
                </tbody> 
                    </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
