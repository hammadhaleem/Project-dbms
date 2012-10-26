		<div class="row">
			<div id="sidebar" class="tabbable">
				<?php include "sections/sidebar.php" ; ?>
				<div class="span9">				
					<div class="tab-content">
							
							
							
							<?php 
							      if ($_GET['r']=1 && $_SESSION['loggedin']!=1)
							      		include_once "forms/user_register.php"; 
							      elseif($_SESSION['loggedin']==1)
							      		include_once "forms/edit_profile.php";
							      else
							      		echo "Oops ! You landed here in error " ; 
							     
							 ?>
						
						
						
						
						</div>
					</div><!-- .tab-content -->
				</div><!-- .span7 -->
			</div><!-- .tabbable -->
		</div><!-- .row-fluid -->


      <hr>