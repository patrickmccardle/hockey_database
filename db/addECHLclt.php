<form action="addECHLsrv.php">
City:<input name="city"/></br>
Name:<input name="name"/></br>
Affiliate:
<select name="affiliate">
  <?php
    require_once 'dbconnect.php';
    $sql = "select name from NHL";
    if (!$result = $mysqli->query($sql)) {
        echo "Errno: " . $mysqli->errno . "</br>";
        echo "Error: " . $mysqli->error . "</br>";
        exit;
    }
    $count = 0;
    while($row = $result->fetch_assoc()) {
      $count = $count + 1;
      echo '<option value="' . $row['name'] . '">' . $row['name'] . '</option>';
    }
  ?>
</select>
</br>
<input type="submit" value="Save"/>
</form>
