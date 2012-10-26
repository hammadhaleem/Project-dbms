<?php 
error_reporting(E_ERROR | E_PARSE);
session_start();
if(!isset($_SESSION['loggedin']))
	$_SESSION['user']="Annon" ; 
?>
