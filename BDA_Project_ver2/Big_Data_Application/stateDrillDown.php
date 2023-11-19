<?php
session_start();

// Check if the user is logged in
if (isset($_SESSION["username"])) {
  // Redirect to the login page if the user is not logged in
  header("Location: login.php");
  exit();
}//$username = $_SESSION["username"];

include("fusioncharts/fusioncharts-wrapper/fusioncharts.php");

include "database.php";
?>
<html>

<head>
  <title>FusionCharts XT - Column 2D Chart</title>
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <script src="js/fusioncharts.js"></script>
</head>

<body>
  <?php

  // Get the country code from the URL that was sent
  $stateNumber = $_GET["state"];


  // SQL query that returns the cities
  $cityQuery = "SELECT L.city, COUNT(O.order_ID) AS total_orders
      FROM Orders O
      JOIN Location L ON O.store_ID = L.store_ID
      WHERE L.state_no=?
      GROUP BY L.city
      ORDER BY total_orders DESC";

  // Prepare the query statement
  $cityPrepStmt = $dbhandle->prepare($cityQuery);

  if ($cityPrepStmt === false) {
    exit("Error while preparing the query to fetch data from City Table. " . $dbhandle->error);
  }

  // Bind the parameters to the query prepared
  $cityPrepStmt->bind_param("s", $stateNumber);

  // Execute the query
  $cityPrepStmt->execute();

  // Get the results from the query executed
  $cityResult = $cityPrepStmt->get_result();

  // If the query returns a valid response, prepare the JSON string
  if ($cityResult) {

    $stateNameQuery = "SELECT state FROM Location WHERE state_no = ?";

    // Prepare the query statement
    $statePrepStmt = $dbhandle->prepare($stateNameQuery);

    // If there is an error in the statement, exit with an error message
    if ($statePrepStmt === false) {
      exit("Error while preparing the query to fetch data from Country Table. " . $dbhandle->error);
    }


    $statePrepStmt->bind_param("s", $stateNumber);

    $statePrepStmt->execute();

    $statePrepStmt->bind_result($stateName);

    $statePrepStmt->fetch();

    $arrData = array(
      "chart" => array(
        "caption" => "Total Orders of each City in this State: " . $stateName,
        "subCaption" => "which city accumulates the most orders in this state",
        "xAxisName" => "City",
        "yAxisName" => "Number of Orders",
        "showValues" => "0",
        "theme" => "zune"
      )
    );

    $arrData["data"] = array();

    // Push the data into the array
    while ($row = $cityResult->fetch_array()) {
      array_push(
        $arrData["data"],
        array(
          "label" => $row["city"],
          "value" => $row["total_orders"]
        )
      );
    }

    $jsonEncodedData = json_encode($arrData);

    $columnChart = new FusionCharts("column2D", "myFirstChart", 600, 300, "chart-1", "json", $jsonEncodedData);

    $columnChart->render();

    $dbhandle->close();
  }
  ?>

  <a href="state.php">Back</a>
  <div id="chart-1"><!-- Fusion Charts will render here--></div>
</body>

</html>