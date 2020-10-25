<?php

require_once 'dbconnect.php';

$sql = "select * from Standings where Name='" . $_REQUEST['Name'] . "'";

if (!$result = $mysqli->query($sql)) {
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;

}
$row = $result->fetch_assoc();
?>

<form action='edtStandingssrv.php'>
RK<input name="RK" value="<?php echo $row['RK']?>"></br>
Name<input name="Name" value="<?php echo $row['Name']?>"></br>
GP<input name="GP" value="<?php echo $row['GP']?>"></br>
W<input name="W" value="<?php echo $row['W']?>"></br>
L<input name="L" value="<?php echo $row['L']?>"></br>
PTS<input name="Pts" value="<?php echo $row['PTS']?>"></br>
<input type="submit" value="Save">
</form>
