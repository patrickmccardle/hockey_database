<?php

require_once 'dbconnect.php';

$sql = "select * from Red_Wings_2018 where Player='" . $_REQUEST['Player'] . "'";

if (!$result = $mysqli->query($sql)) {
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;

}
$row = $result->fetch_assoc();
?>

<form action='edtredwingssrv.php'>
Player <input name="Player" value="<?php echo $row['Player']?>"></br>
Age <input name="Age" value="<?php echo $row['Age']?>"></br>
Pos <input name="Pos" value="<?php echo $row['Pos']?>"></br>
GP <input name="GP" value="<?php echo $row['GP']?>"></br>
G <input name="G" value="<?php echo $row['G']?>"></br>
A <input name="A" value="<?php echo $row['A']?>"></br>
PTS <input name="PTS" value="<?php echo $row['PTS']?>"></br>
plusMinus <input name="plusMinus" value="<?php echo $row['plusMinus']?>"></br>
PIM <input name="PIM" value="<?php echo $row['PIM']?>"></br>
<input type="submit" value="Save">
</form>
