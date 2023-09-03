<?php

include_once '../../model/db.php';
$start_location = $_POST['start_location'];
$end_location = $_POST['end_location'];
$ticket_type = $_POST['ticket_type'];
$journey_date = $_POST['journey_date'];
$sql = "SELECT * FROM bus_ticket WHERE (bus_start_location LIKE '%$start_location%') AND (bus_end_location LIKE '%$end_location%') AND (bus_ticket_type LIKE '%$ticket_type%') AND (bus_journey_date LIKE '%$journey_date%')";
$result = mysqli_query($connection,$sql);
if(mysqli_num_rows($result)>0){
	while ($row=mysqli_fetch_assoc($result)) {
		echo "	<tr>
		          <td>".$row['bus_operators_name']."</td>
		          <td>".$row['bus_ticket_type']."</td>
		          <td>".$row['bus_ticket_price']."</td>
		          <td>".$row['bus_ticket_availability']."</td>
                  <td>".$row['bus_available_seat']."</td>
                  <td>".$row['bus_route']."</td>
                  <td>".$row['bus_journey_date']."</td>
                  <td>".$row['bus_arrival_time']."</td>
                  <td>".$row['bus_departure_time']."</td>
				  <td><img src=".$row['image']." style=\"width:50px;height:50px;\" > </td>
		        </tr>";
	}
}
else{
	echo "<tr><td>0 result's found</td></tr>";
}

?>