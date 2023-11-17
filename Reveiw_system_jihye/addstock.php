<?php 
  /*session_start(); 

  if (!isset($_SESSION['username'])) {
  	$_SESSION['msg'] = "You must log in first";
  	header('location: login.php');
  }
  if (isset($_GET['logout'])) {
  	session_destroy();
  	unset($_SESSION['username']);
  	header("location: login.php");
  }*/
?>

<?php


// initializing variables
$item_name = "";
$item_price    = "";


// connect to the database
$db = mysqli_connect('localhost', 'root', '', 'restaurant_data');

if (mysqli_connect_errno())
    {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }

// Add item
if (isset($_POST['add'])) {
  // receive all input values from the form
  echo "connect";
  $stock_name=mysqli_real_escape_string($db, $_POST['stock_name']);
  $stock_amount=mysqli_real_escape_string($db, $_POST['stock_amount']);
  $cost=mysqli_real_escape_string($db, $_POST['stock_cost']);
  
    $query = "INSERT INTO inventory (stock_name,stock_amount,cost) 
  			  VALUES('$stock_name','$stock_amount','$stock_cost')";
          
      if(mysqli_query($db, $query))
      {
      echo "<script>alert('Successfully stored');</script>";
				
    }
    else{
        echo"<script>alert('Somthing wrong!!!');</script>";
    }
  	
  	header('location: inventory.php');
  
}
?>