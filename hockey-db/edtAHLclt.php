<?php

require_once 'dbconnect.php';

$sql = "select * from AHL where city='" . $_REQUEST['city'] . "'";

if (!$result = $mysqli->query($sql)) {
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;

}
$row = $result->fetch_assoc();
?>

<form action='edtAHLsrv.php'>
city <input name="city" value="<?php echo $row['city']?>"></br>
name <input name="name" value="<?php echo $row['name']?>"></br>
NHL_Affiliate <input name="NHL_Affiliate" value="<?php echo $row['NHL_Affiliate']?>"></br>
<input type="submit" value="Save">
</form>
