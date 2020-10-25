<?php
require_once 'dbconnect.php';

// UPDATE Trophies set Trophy = "Stanley Cup", Most_Recently_Won_By = Pittsburgh Penguins


$sql = "update Trophies set Trophy = '" . $_REQUEST['Trophy'] .
  "',Most_Recently_Won_By=" . $_REQUEST['Most_Recently_Won_By'] . ",Most_All_Time_Wins='" . $_REQUEST['Most_All_Time_Wins'] . "' where Number_Of_Wins='" . $_REQUEST['Number_Of_Wins'] ;



if (!$result = $mysqli->query($sql)) {
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;

}

?>
<script>window.location='Trophies.php'; </script>
