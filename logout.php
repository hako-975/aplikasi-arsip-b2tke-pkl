<?php 
require 'functions.php';
$_SESSION = [];
session_unset();
session_destroy();
setcookie('id', '', time() - 3600);
setcookie('key', '', time() - 3600);
header("Location: login.php");
exit;
 ?>