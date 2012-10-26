<?php 
 if(isset($_GET['pid']))
 	{
 		include "template/".$_GET['pid'].".php" ; 
 	}
 	else
 	{
 		include "template/main.php";
 	}