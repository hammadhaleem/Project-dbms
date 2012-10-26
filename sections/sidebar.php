<div class="span3">
					<?php include_once "forms/login.php"; ?>
					<div class="well">
					
					<ul id="sidenav" class="nav nav-pills nav-stacked">
					<?php	 if ($_GET['r']==1 || $_GET['pid']==2)
							      		{
									}else{ ?>
						<li><a href="index.php#tabs-basic" data-toggle="tab"><strong>Home</strong></a></li>
						<li><a href="index.php#tabs-side" data-toggle="tab"><strong>Authors</strong></a></li>
						<li><a href="index.php#tabs-stacked" data-toggle="tab"><strong>Catagories</strong></a></li>
						<li><a href="index.php#pills-basic" data-toggle="tab"><strong>Recent</strong></a></li>
						 <?php 
							
		         			 if(isset($_SESSION['loggedin']))
		          				   echo ' <li><a href="index.php?pid=2"><strong>Profile</strong></a></li> ';
		        			  	else
		          				   echo ' <li><a href="index.php?pid=2&r=1"><strong>Register</strong></a></li> ';
		          					 }
		          			  ?>
					</ul>
					</div><!-- .well -->
					
				</div><!-- .span3 -->
