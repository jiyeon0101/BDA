<?php
session_start();

// Check if the user is logged in
if (isset($_SESSION["username"])) {
  // Redirect to the login page if the user is not logged in
  header("Location: login.php");
  exit();
}//$username = $_SESSION["username"];

include("fusioncharts/fusioncharts-wrapper/fusioncharts.php");

$hostdb = "127.0.0.1";
$userdb = "root";
$passdb = "";
$namedb = "review3";
$port = 3306;

$dbhandle = new mysqli($hostdb, $userdb, $passdb, $namedb, $port);
if ($dbhandle->connect_error) {
  exit("There was an error with your connection: " . $dbhandle->connect_error);
}

?>
<html>

<head>
  <title>FusionCharts XT - Column 2D Chart - Data from a database</title>
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <script src="js/fusioncharts.js"></script>
</head>

<body>
  <?php

  //SQL query that returns all 8 states
  $strQuery = "SELECT L.state, COUNT(O.order_ID) AS total_orders, L.state_no
   FROM Orders O
   JOIN Location L ON O.store_ID = L.store_ID
   GROUP BY L.state_no, L.state
   ORDER BY total_orders DESC
   ";

  // Query-Execution
  $result = $dbhandle->query($strQuery) or exit("Error code ({$dbhandle->errno}): {$dbhandle->error}");

  if ($result) {
    $arrData = array(
      "chart" => array(
        "caption" => "Order Total according to States",
        "subCaption" => "which state accumulates more orders",
        "xAxisName" => "State",
        "yAxisName" => "Number of Orders",
        "showValues" => "0",
        "theme" => "zune"
      )
    );

    $arrData["data"] = array();

    while ($row = mysqli_fetch_array($result)) {
      array_push(
        $arrData["data"],
        array(
          "label" => $row["state"],
          "value" => $row["total_orders"],
          "link" => "stateDrillDown.php?state=" . $row["state_no"]
        )
      );
    }

    $jsonEncodedData = json_encode($arrData);

    $columnChart = new FusionCharts("column2D", "myFirstChart", 600, 300, "chart-1", "json", $jsonEncodedData);


    $columnChart->render();

    $dbhandle->close();

  }

  ?>
  <div id="chart-1"><!-- Fusion Charts will render here--></div>
</body>

</html>