<?php
$user_val ="Enter username";
$pass_val ="Enter Password";
if(isset($_POST['username'])|| isset($_POST['password'] )|| isset($_GET['login'] ))
{
	
	if($_POST['username']!=NULL && $_POST['password']!=NULL && $_POST['username']!="" &&  $_POST['password']!="" )
			{ $_SESSION['loggedin']=1 ;
			  $_SESSION['user']=$_POST['username'];
			}
	if($_POST['username']==NULL ||$_POST['username'] == "" )
			$user_val="Enter correct data " ; 
			else
			$user_val=$_POST['username'];

	if($_POST['password']==NULL ||$_POST['password'] == "" )
			$pass_val="Enter correct data for password !!<br/> " ; 
}

					
					 if(!isset($_SESSION['loggedin']))
							{
							?>
					 <form method="POST" action="?login=1">
 	                  Username: <input type="text" name="username" size="15" value="<?php echo $user_val ; ?>" /><br />
							 Password: <input type="password" name="password" size="15" value=""/><br />
							 <?php echo $pass_val ; ?>
 					   		 <input type="submit" value="Login" />
 					</form><? }else
 					{
 						echo "<strong> Welcome : ".$_SESSION['user']."</strong ><br/>
 						<strong><a href='logout.php' >Logout</a> </strong><br/><br/>";
 					}?>
