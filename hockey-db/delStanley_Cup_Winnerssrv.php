<?php
include 'dbconnect.php';
$sql = "delete from Stanley_Cup_Winners where Season ='" . $_REQUEST['Season'] . "'";

echo '<b>' . var_dump($_REQUEST) . '</b>';

if (!$result = $mysqli->query($sql)) {
    echo "Error: SQL Error: </br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";

    exit;
}
?>
<script>
window.location='Stanley_Cup_Winners.php';
</script>
