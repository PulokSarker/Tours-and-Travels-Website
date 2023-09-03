<?php

include_once '../../model/db.php';
$start_location = $_POST['start_location'];
$end_location = $_POST['end_location'];
$launch_deck_type = $_POST['launch_deck_type'];
$journey_date = $_POST['journey_date'];
$sql = "SELECT * FROM launch_ticket WHERE (launch_starting_location LIKE '%$start_location%') AND (launch_ending_location LIKE '%$end_location%') AND (launch_deck_type LIKE '%$launch_deck_type%') AND (launch_journey_date LIKE '%$journey_date%')";
$result = mysqli_query($connection,$sql);
if(mysqli_num_rows($result)>0){
	while ($row=mysqli_fetch_assoc($result)) {
		echo "	<tr>
		          <td>".$row['launch_operator_name']."</td>
		          <td>".$row['launch_deck_type']."</td>
		          <td>".$row['launch_ticket_price']."</td>
		          <td>".$row['launch_ticket_availability']."</td>
                  <td>".$row['launch_available_seats']."</td>
                  <td>".$row['launch_route']."</td>
                  <td>".$row['launch_journey_date']."</td>
                  <td>".$row['launch_arrival_time']."</td>
                  <td>".$row['launch_departure_time']."</td>
				  <td><img src=".$row['image']." style=\"width:50px;height:50px;\" > </td>
		        </tr>";
	}
}
else{
	echo "<tr><td>0 result's found</td></tr>";
}

?>