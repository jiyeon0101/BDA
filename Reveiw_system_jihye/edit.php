<?php

// connect to the database
$db = mysqli_connect('localhost', 'root', '', 'restaurant_data');

// get the parameter
if (isset($_POST['submit']))
{
$param=$_POST['param_name'];
$name=mysqli_real_escape_string($db, $_POST['name']);
$amunt=mysqli_real_escape_string($db, $_POST['amount']);
$cost=mysqli_real_escape_string($db, $_POST['cost']);

mysqli_query($db,"UPDATE inventory SET stock_name='$name', stock_amount='$amount', cost='$cost' WHERE stock_name='$param_name'");

header("Location:inventory.php");
}


if (isset($_GET['name']))
{

$id = $_GET['id'];
$result = mysqli_query($db,"SELECT stock_name, stock_amount, cost FROM inventory WHERE S=".$_GET['id']);

$row = mysqli_fetch_array($result);

if($row)
{

$id = $row['product_id'];
$name = $row['product_name'];
$price = $row['price'];
$quant=$row['quantity'];
}
else
{
echo "No results!";
}
}
?>


<!DOCTYPE html>
<html>
<head>
<title>Edit Item</title>
</head>
<body>

<form action="" method="post" action="edit.php">
<input type="hidden" name="id" value="<?php echo $id; ?>"/>

<table border="1">
<tr>
<td colspan="2"><b><font color='Red'>Edit Records </font></b></td>
</tr>

<!--edit stock name-->
<tr>
<td width="179"><b><font >NAME<em>*</em></font></b></td>
<td>
    <label><input type="text" name="name" value="<?php echo $name; ?>" /></label>
</td>
</tr>
<!--edit stock amount-->
<tr>
<td width="179"><b><font color='#663300'>AMOUNT<em>*</em></font></b></td>
<td><label>
<input type="text" name="amount" value="<?php echo $amount;?>" />
</label></td>
</tr>

<tr>
<td width="179"><b><font color='#663300'>COST<em>*</em></font></b></td>
<td><label>
<input type="text" name="cost" value="<?php echo $cost ?>" />
</label></td>
</tr>

<tr align="Right">
<td colspan="2"><label>
<input type="submit" name="submit" value="Edit Records">
</label></td>
</tr>
</table>
</form>
</body>
</html>
