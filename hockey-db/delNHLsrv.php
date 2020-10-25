<?php
include 'dbconnect.php';
$sql = "delete from NHL where city ='" . $_REQUEST['city'] . "'";

echo '<b>' . var_dump($_REQUEST) . '</b>';

if (!$result = $mysqli->query($sql)) {
    echo "Error: SQL Error: </br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";

    exit;
}
?>
<script>
window.location='NHL.php';
</script>
