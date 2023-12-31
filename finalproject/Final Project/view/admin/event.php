<?php 
include '../../model/config.php';
	session_start();
	if(isset($_COOKIE['flag'])){
?>

<!DOCTYPE html>

<html lang="en" dir="ltr">

<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="../css/adminhome.css">
  <link rel="stylesheet" href="../css/hotel.css">
  <link rel="stylesheet" href="../css/user.css">
  <link rel="stylesheet" href="../css/pop.css">
  <link rel="stylesheet" href="../css/table.css">
  <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <style>
    a:link {
      text-decoration: none;
    }
  </style>
</head>

<body>
  <div class="sidebar">
    <div class="logo-details">
      <i class='bx bx-trip icon'></i>
      <div class="logo_name">Just Travel</div>
      <i class='bx bx-menu' id="btn"></i>
    </div>
    <!-- sidebar logo -->
    <!-- sidebar link start  -->
    <ul class="nav-list">
      <li>
        <a href="./adminhome.php">
          <i class='bx bx-grid-alt'></i>
          <span class="links_name">Dashboard</span>
        </a>
        <span class="tooltip">Dashboard</span>
      </li>

      <li>
        <a href="./user.php">
          <i class='bx bx-user'></i>
          <span class="links_name">User</span>
        </a>
        <span class="tooltip">User</span>
      </li>
      <li>
        <a href="./hotel.php">
          <i class='bx bxs-hotel'></i>
          <span class="links_name">Hotel</span>
        </a>
        <span class="tooltip">Hotel</span>
      </li>
      <li>
        <a href="./event.php">
          <i class='bx bx-calendar-event'></i>
          <span class="links_name">Event</span>
        </a>
        <span class="tooltip">Event</span>
      </li>
      <li>
        <a href="./place.php">
          <i class='bx bx-location-plus'></i>
          <span class="links_name">Place</span>
        </a>
        <span class="tooltip">Place</span>
      </li>
      <li>
        <a href="./offer.php">
          <i class='bx bxs-offer'></i>
          <span class="links_name">Offers</span>
        </a>
        <span class="tooltip">Offers</span>
      </li>
      <li>
        <a href="./bus.php">
          <i class='bx bx-bus'></i>
          <span class="links_name">Bus ticket</span>
        </a>
        <span class="tooltip">Bus ticket</span>
      </li>
      <li>
        <a href="./air.php">
          <i class='bx bxs-plane-alt'></i>
          <span class="links_name">Air ticket</span>
        </a>
        <span class="tooltip">Air ticket</span>
      </li>
      <li>
        <a href="./lounch.php">
          <i class='bx bxs-ship'></i>
          <span class="links_name">lounch ticket</span>
        </a>
        <span class="tooltip">lounch ticket</span>
      </li>
      <li>
        <a href="./booking.php">
          <i class='bx bxs-bookmark-plus'></i>
          <span class="links_name">Booking Info</span>
        </a>
        <span class="tooltip">Booking Info</span>
      </li>
      <li>
        <a href="./upay.php">
          <i class='bx bx-money'></i>
          <span class="links_name">User Payment</span>
        </a>
        <span class="tooltip">User Payment</span>
      </li>
      <li>
        <a href="./merpay.php">
          <i class='bx bx-diamond'></i>
          <span class="links_name">Merchant Payment</span>
        </a>
        <span class="tooltip">Merchant Payment</span>
      </li>

      <li class="profile">
        <div class="profile-details">
          <img src="../../assets/admin.png" alt="profileImg">-->
          <div class="name_job">
            <div class="name"><?php echo $_SESSION['username']; ?></div>
            <div class="job">Web designer</div>
          </div>
        </div>
        <a href="../../control/logout.php"><i class='bx bx-log-out' id="log_out"></i></a>
      </li>
    </ul>
  </div>
  <!-- sidebar link end  -->

  <!-- main section starts  -->
  <section class="home-section">
    <div class="text">Event List</div>

    <form action="" method="POST">
      <tr>
        <td>
          <input type="text" name="get_id" placeholder="Search User" style="margin-left:10px">
          <button type="submit" name="search_by_id" value="Submit"> Search </button>
        </td>
      </tr>
    </form>

    <!-- serach box -->
    <div>
      <input type="checkbox" id="show">
      <button class="button" style="margin-top:10px;margin-left:10px"> <label for="show">Search</label> </button>
      <div class="container">
        <label for="show" class="close-btn bx bx-window-close" title="close"></label>
        <input type="text" id="search" placeholder="event_location">

        <div class="table-wrapper">
          <table class="fl-table">
            <thead>
              <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Location</th>
                <th>Ticket Price</th>
                <th>event Details</th>
                <th>Start Time</th>
                <th>End Time</th>
                <th>Image</th>
              </tr>
            </thead>
            <tbody id="output">
              <!-- SEARCH RESULT OUT PUT FROM SRCHOTEL.PHP -->
            <tbody>
          </table>
        </div>
      </div>
    </div>
    <!-- search end  -->

    <?php
if(isset($_POST['search_by_id'])){
   $id = $_POST['get_id'];
  $sql= "SELECT * FROM event_ticket WHERE event_id='$id';";
  $result = mysqli_query($conn, $sql); 

  if(mysqli_num_rows($result) > 0){
    while ($row = mysqli_fetch_assoc($result)) {
 ?>

    <div class="table-wrapper">
      <table class="fl-table">
        <thead>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Location</th>
            <th>Price</th>
            <th>Details</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th>Image</th>
            <th>Edit</th>
            <th>Delete</th>
          </tr>
        </thead>
        <tbody>

          <tr>
            <td><?php echo $row['event_id']; ?></td>
            <td><?php echo $row['event_name']; ?></td>
            <td><?php echo $row['event_location']; ?></td>
            <td><?php echo $row['event_ticket_price']; ?></td>
            <td><?php echo $row['event_details']; ?></td>
            <td><?php echo $row['event_start_date']; ?></td>
            <td><?php echo $row['event_end_date']; ?></td>
            <td><img src="<?php echo $row['event_image']; ?>" alt="image" style="width:100px;height:100px;"> </td>
            <td>
              <div class="button"><a href="./edit/event/editevent.php?id=<?php echo $row['event_id']; ?>"> EDIT </a>
              </div>
            </td>
            <td>
              <div class="button"><a href="./edit/event/deleteevent.php?id=<?php echo $row['event_id']; ?>"> Delete </a>
              </div>
            </td>
          </tr>

          <?php } } }
   
          ?>

        <tbody>
      </table>
    </div>

    <section class="event">
      <center>
        <table id="event">
          <tr class="tr">
            <th class="th">
              <h2>Event List</h2>
            </th>
          </tr>
        </table>
      </center>

    </section>

  </section>
  <!-- main section ends  -->
  <script>
    let sidebar = document.querySelector(".sidebar");
    let closeBtn = document.querySelector("#btn");

    closeBtn.addEventListener("click", () => {
      sidebar.classList.toggle("open");
      menuBtnChange(); //calling the function
    });

    //change sidebar button
    function menuBtnChange() {
      if (sidebar.classList.contains("open")) {
        closeBtn.classList.replace("bx-menu", "bx-menu-alt-right"); //replacing the iocns class
      } else {
        closeBtn.classList.replace("bx-menu-alt-right", "bx-menu"); //replacing the iocns class
      }
    }
  </script>
  <!-- pop up script -->
  <script type="text/javascript">
    $(document).ready(function () {
      $("#search").keypress(function () {
        $.ajax({
          type: 'POST',
          url: './search/srcevent.php',
          data: {
            name: $("#search").val(),
          },
          success: function (data) {
            $("#output").html(data);
          }
        });
      });
    });
  </script>
  <!-- Display EVENT JSON -->
  <script type="text/javascript">
    $.ajax({
      url: '../json/event.json',
      dataType: 'json',
      success: function (data) {
        for (var i = 0; i < data.length; i++) {
          var row = $('<tr style="background:" align= "center" ><td>' + data[i].name + '</td></tr>');
          $('#event').append(row);
        }
      }
    });
  </script>

</body>

</html>

<?php
	}else{
		header('location: ../../control/logout.php');
	}
?>