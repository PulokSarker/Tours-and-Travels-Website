<?php

include_once '../../model/db.php';
$hotel_location = $_POST['hotel_location'];
$booking_date = $_POST['booking_date'];
$sql = "SELECT * FROM hotel WHERE (hotel_location LIKE '%$hotel_location%') AND (booking_date LIKE '%$booking_date%')";
$result = mysqli_query($connection,$sql);
if(mysqli_num_rows($result)>0){
	while ($row=mysqli_fetch_assoc($result)) {
		echo "	<tr>
		          <td>".$row['hotel_name']."</td>
                  <td>".$row['hotel_location']."</td>
                  <td>".$row['regular_booking_price']."</td>
                  <td>".$row['discounted_booking_price']."</td>
                  <td>".$row['booking_date']."</td>
                  <td>".$row['hotel_services']."</td>
				  <td><img src=".$row['hotel_image']." style=\"width:50px;height:50px;\" > </td>
		        </tr>";
	}
}
else{
	echo "<tr><td>0 result's found</td></tr>";
}

?>