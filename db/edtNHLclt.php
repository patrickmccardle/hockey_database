<?php

require_once 'dbconnect.php';

$sql = "select * from NHL where city='" . $_REQUEST['city'] . "'";

if (!$result = $mysqli->query($sql)) {
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;

}
$row = $result->fetch_assoc();
?>

<form action='edtNHLsrv.php'>
city <input name="city" value="<?php echo $row['city']?>"></br>
name <input name="name" value="<?php echo $row['name']?>"></br>
mascot <input name="mascot" value="<?php echo $row['mascot']?>"></br>
<input type="submit" value="Save">
</form>
