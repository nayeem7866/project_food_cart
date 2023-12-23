<!DOCTYPE html>
<html>
<head>
  <title>Login In</title>
  <link rel="stylesheet" type="text/css" href="login.css">
</head>
<body>
<div class='loginbox'>
  <h1>Login Here</h1> 
          <form method="POST">
                   <input type="text" placeholder="enter email" name="uname" required>
                   <input type="password" placeholder="    Enter Password" name="password" required>
                   <input type="submit" name="login" value="login">
                   <a href="signup.php">create new account</a><br><br>
                   <a href="">Forgot Password ?</a>
          </form>
</div>
<?php
    if(isset($_POST['login']))
         {

           $con=mysqli_connect('localhost','root','','customers');
          $a=mysqli_query($con,"select * from signup");
            while($s=mysqli_fetch_assoc($a))
            {
            if($_POST['uname'] == $s['email'] && $_POST['password'] == $s['password'])
            {
                 session_start();
                 $_SESSION['user']= $s['id'];
                 // echo $_SESSION['user'];
            header("location:index.php");
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