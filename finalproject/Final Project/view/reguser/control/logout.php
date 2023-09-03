<?php

session_start();
setcookie('flag', 'true', time() - 10, '/');

header("Location: ./user-login.php");
