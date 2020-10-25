<?php

require_once 'dbconnect.php';

$sql = "select * from ECHL where city='" . $_REQUEST['city'] . "'";

if (!$result = $mysqli->query($sql)) {
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;

}
$row = $result->fetch_assoc();
?>

<form action='edtECHLsrv.php'>
city <input name="city" value="<?php echo $row['city']?>"></br>
name <input name="name" value="<?php echo $row['name']?>"></br>
affiliate <input name="affiliate" value="<?php echo $row['affiliate']?>"></br>
<input type="submit" value="Save">
</form>
