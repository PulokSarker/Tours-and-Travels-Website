<?php

$server_name = "localhost";
$db_username = "root";
$db_password = "";
$db_name = "ticket_db";

global $server_name;
global $db_username;
global $db_password;
global $db_name;

$connection = mysqli_connect($server_name, $db_username, $db_password, $db_name);
$dbconfig = mysqli_select_db($connection, $db_name);

if ($dbconfig) {
	return $connection;
} else {
	echo "Database connection failed";
	return false;
}


?>