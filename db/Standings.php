<html>
  <head>
    <title>Patrick's PHP Hockey Project</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <script defer src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script defer src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <script defer src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.10/js/all.js" integrity="sha384-slN8GvtUJGnv6ca26v8EzVaR9DC58QEwsIk9q1QXdCU8Yu8ck/tL/5szYlBbqmS+" crossorigin="anonymous"></script>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <a class="navbar-brand" href="#">Menu</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-item nav-link" href="NHL.php">NHL</a>
          <a class="nav-item nav-link" href="AHL.php">AHL</a>
          <a class="nav-item nav-link" href="ECHL.php">ECHL</a>
          <a class="nav-item nav-link active" href="#">Standings <span class="sr-only">(current)</span></a>
          <a class="nav-item nav-link" href="Red_Wings_2018.php">Red_Wings_2018</a>
          <a class="nav-item nav-link" href="Trophies.php">Trophies</a>
          <a class="nav-item nav-link" href="Stanley_Cup_Winners.php">Stanley_Cup_Winners</a>
          <a class="nav-item nav-link" href="retired.php">retired</a>
        </div>
      </div>
    </nav>
    <div style="margin-bottom: 0;" class="jumbotron jumbotron-fluid">
      <div class="container">
        <div class="row">
          <div class="col-8">
            <div class="container">
              <h1 class="display-4">Standings</h1>
              <p class="lead">Lets go Red Wings</p>
            </div>
          </div>
          <div class="col-4">
            <div class="card bg-dark text-white">
              <img class="card-img" src="https://storage.googleapis.com/steven-aldinger/detroit.jpg" alt="Hockey card image">
              <div class="card-img-overlay">
                <h5 class="card-title">hockey</h5>
                <p class="card-text">rulez</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <table style="margin-bottom: 0;" class="table table-sm table-striped table-dark table-bordered table-hover">
      <thead>
        <tr>
          <th scope="col">Rk</th>
          <th scope="col">Name</th>
          <th scope="col">GP</th>
          <th scope="col">W</th>
          <th scope="col">L</th>
          <th scope="col">PTS</th>
          <th scope="col"><a href='addStandingsclt.php'>Add New</a></th>
        </tr>
      </thead>
      <tbody>
        <?php
          require_once 'dbconnect.php';
          $sql = "select * from Standings";
          if (!$result = $mysqli->query($sql)) {
              echo "Errno: " . $mysqli->errno . "</br>";
              echo "Error: " . $mysqli->error . "</br>";
              exit;
          }
          $count = 0;
          while($row = $result->fetch_assoc()) {
            $count = $count + 1;
            echo '<tr>';
            echo '<td>' . $row['RK'] . '</td>';
            echo '<td>' . $row['Name'] . '</td>';
            echo '<td>' . $row['GP'] . '</td>';
            echo '<td>' . $row['W'] . '</td>';
            echo '<td>' . $row['L'] . '</td>';
            echo '<td>' . $row['PTS'] . '</td>';
            echo "<td><a href='edtStandingsclt.php?Name=" . $row['name'] . "'>EDIT</a>" . ' ';
            echo "<a href='delStandingssrv.php?Name=" . $row['Name'] .  "'>DEL</a>" . '</td>';
            echo '</tr>';
          }
        ?>
      </tbody>
    </table>
