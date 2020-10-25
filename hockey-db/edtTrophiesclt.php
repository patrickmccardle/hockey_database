<?php

require_once 'dbconnect.php';

$sql = "select * from Trophies where Trophy='" . $_REQUEST['Trophy'];

if (!$result = $mysqli->query($sql)) {
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;

}
$row = $result->fetch_assoc();
?>

<form action='edtTrophiessrv.php'>
Trophy <input name="Trophy" value="<?php echo $row['Trophy']?>"></br>
Most_Recently_Won_By <input name="Most_Recently_Won_By" value="<?php echo $row['Most_Recently_Won_By']?>"></br>
Most_All_Time_Wins <input name="Most_All_Time_Wins" value="<?php echo $row['Most_All_Time_Wins']?>"></br>
Number_Of_Wins <input name="Number_Of_Wins" value="<?php echo $row['Number_Of_Wins']?>"></br>
<input type="submit" value="Save">
</form>
