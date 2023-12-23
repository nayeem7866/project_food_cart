<html>
<head>
	<title>Contact</title>
	<link rel="stylesheet" type="text/css" href="contact.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
</head>
<body>
	   <div class ="contact-title">
  			<h1>contact us</h1>
  			<h2>We Are Always Ready To Serve You</h2>
	   </div>
	   <div class="control-form">
	   		<form id="contact-form" method="post" action="">
	   			<input type="text" name="name"class="form-control" placeholder="Enter Your Name" required>
	   			<br>
	   			<input type="email" name="email"class="form-control" placeholder="Enter Your Email" required>
	   			<br>
	   			<input type="textarea" name="msg"class="form-control" placeholder="Enter Message" required>
	   			<br>

	   			<input type="submit"class="form-control submit" value="Send Message" name="btn" >
	   		</form>
	   </div>
	   <div class="logo">
	   		 <a href='https://www.instagram.com/mallabasit499' target="_blank"><i class="fab fa-instagram fa-3x " style="color:maroon"></i></a>
	   		 <i class="fab fa-facebook-square fa-3x" style="color:blue"></i>
	   		 <i class="fab fa-twitter-square fa-3x"style="color:skyblue" ></i>
	   </div>
</body>
</html>
<?php
       if(isset($_POST['btn']))
       {
       	  $con=mysqli_connect('localhost','root','','customers');
       	   mysqli_query($con,"insert into contact (name,email,message) values('".$_POST['name']."',
               '".$_POST['email']."','".$_POST['msg']."')");
          echo "<script> 
                   alert('Thank You For Reaching to us,We will get back to you ASAP');
                </script>";
       }


?>