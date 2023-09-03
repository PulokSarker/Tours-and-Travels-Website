<?php 
	session_start();
	if(isset($_COOKIE['flag'])){
?>

<?php

// Create connection
include '../../../model/config.php';

$sql = "SELECT * FROM upay WHERE username LIKE '%".$_POST['name']."%'";
$result = mysqli_query($conn, $sql);
if(mysqli_num_rows($result)>0){
	while ($row=mysqli_fetch_assoc($result)) {
		echo "	
                <tr>
                    <td>".$row['id']."</td>
                    <td>".$row['username']."</td>
                    <td>".$row['orderid']."</td>
                    <td>".$row['paym']."</td>
                    <td>".$row['amount']."</td>
                    <td>".$row['status']."</td>

                </tr> ";
	}
}
else{
	echo "<tr><td>0 result's found</td></tr>";
}

?>

<?php
	}else{
		header('location: ../../control/logout.php');
	}
?>