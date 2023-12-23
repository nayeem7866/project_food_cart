<html>
<head>
	<title>Admin login page</title>
	<link rel="stylesheet" type="text/css" href="login.css">
</head>
<body>
	   <div class ="admin">
  			<h1>Admin Panel</h1>
	   </div>
	   <div class="control-form">
	   		<form id="contact-form" method="post" action="">
	   			<input type="text" name="name"class="form-control" placeholder="Enter Username" 
	   			required><br>
	   			<input type="password" name="pass"class="form-control" placeholder="Enter Your Password" 
	   			required><br>
	   			<input type="submit" name="btn" class="form-control submit" value="login" >
	   		</form>
	   </div>
	    <?php
       	    if(isset($_POST['btn']))
         {

         	 $con=mysqli_connect('localhost','root','','customers');
         	$a=mysqli_query($con,"select * from admin");
            while($s=mysqli_fetch_assoc($a))
            {
         	  if($_POST['name'] == $s['username'] && $_POST['pass'] == $s['password'])
         	  {
         		header("location:menu.php");
         	  }
         	  else
         	  {
         		echo "username or password is incorrect";
         	  }
            }
         }

	   ?>
</body>
</html>