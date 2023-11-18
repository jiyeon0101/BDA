<?php
include("../BDA_PROJECT/config.php");

if (isset($_GET['stock_name'])) {
    $param = $_GET['stock_name'];
    $result = mysqli_query($db, "SELECT stock_id, stock_name, stock_amount, cost FROM inventory WHERE stock_name='" . $_GET['stock_name'] . "'");

    $row = mysqli_fetch_array($result);

    if ($row) {
        $id = $row['stock_id'];
        $name = $row['stock_name'];
        $amount = $row['stock_amount'];
        $cost = $row['cost'];
    } else {
        echo "No results!";
    }
}

if (isset($_POST['submit'])) {
    $stock_name = $_POST['stock_name'];
    $stock_amount = mysqli_real_escape_string($db, $_POST['stock_amount']);
    $cost = mysqli_real_escape_string($db, $_POST['cost']);

    mysqli_query($db, "UPDATE inventory SET stock_amount='$stock_amount', cost='$cost' WHERE stock_id='$id'");

    header("Location: inventory.php");
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Item</title>
</head>
<body>

<form method="POST" action="">
    <table border="1">
        <tr>
            <td colspan="2"><b><font color='Red'>Edit Records </font></b></td>
        </tr>

        <tr>
            <td width="179"><b><font >NAME<em>*</em></font></b></td>
            <td>
                <label><input type="text" name="stock_name" value="<?php echo $name; ?>" readonly /></label>
            </td>
        </tr>

        <tr>
            <td width="179"><b><font color='#663300'>AMOUNT<em>*</em></font></b></td>
            <td><label>
                <input type="text" name="stock_amount" value="<?php echo $amount;?>" />
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
