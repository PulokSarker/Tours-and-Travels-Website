<?php 

$server = "localhost";
$user = "root";
$pass = "";
$database = "ticket_db";

function getConnection()
{
	global $server;
	global $database;
	global $pass;
	global $user;

	$con = mysqli_connect($server, $user, $pass, $database);
	return $con;
}

?>