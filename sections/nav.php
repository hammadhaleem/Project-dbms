<body>
<div class="navbar navbar-fixed-top">
	  <div class="navbar-inner">
	    <div class="container">
		      <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </a>
		      <a class="brand" href="index.php">Book Store </a>
		      <div class="nav-collapse">
		        <ul class="nav">
		          <li><a href="index.php">Home</a></li>
		          <li><a href="index.php?pid=1">Recommended</a></li>
		          <?php 
		          if(isset($_SESSION['loggedin']))
		          			  echo ' <li><a href="index.php?pid=2">Profile</a></li> ';
		          	else
		          			  echo ' <li><a href="index.php?pid=2&r=1">Register</a></li> ';
		          ?>
		          <li><a href="index.php?pid=3">History</a></li>
		        </ul>
		        <p class="navbar-text pull-right">
		        	
            			  Welcome <a href="index.php?pid=2" class="navbar-link"><?php echo $_SESSION['user'] ; ?> </a>
           		 </p>
		      </div>
		    </div>
		  </div>
		</div>
		
		<div class="container">
