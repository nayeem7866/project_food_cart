<!DOCTYPE html>
<html>
<head>
     <title>Sign UP Form</title>
     <link rel="stylesheet" type="text/css" href="signup.css" />
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
       integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
     <div id="main">
          
              
                   <h2>SIGN UP</h2> 
                 <form method="POST">
                      
                          <input type="text" name="fname" class="form-control" placeholder="First Name" required id="input"/>
                     

                      
                          <input type="text" name="lname" class="form-control" placeholder="Last Name" required id="input"/>
                     
                      
                          <input type="email" name="email" class="form-control" placeholder=" Enter Email Id" required id="input"/>
                      

                       
                          <input type="text" name="address" class="form-control" placeholder="Enter Address" required id="input"/>
                      

                      
                          <input type="text" name="pincode" class="form-control" placeholder="Enter Pincode" required id="input"/>
                     

                      
                          <input type="text" name="phonenumber" class="form-control" placeholder="Enter Phone Number" required id="input"/>
                     

                      
                          <input type="password" name="pwd" class="form-control" placeholder="Enter Password" required id="input"/>
                      
                      
                          <input type="password" name="confirmpassword" class="form-control" placeholder="Enter Confirm Password" required id="input"/>
                     

                     
                          <input class='form-control' name="btn" type="submit" value="SIGNUP" id="sub"/>
                      
                </form>
                         
                          <a href="login.php"><input class='form-control' type="submit" value="LOG IN" id="sub1"/></a>
                        
    </div>
  </body>
  </html>
  <?php
     if(isset($_POST['btn']))
     {
          $con=mysqli_connect('localhost','root','','customers');
          mysqli_query($con,"insert into signup (firstname,lastname,email,address,
               pincode,phonenumber,password,confirmpassword) values('".$_POST['fname']."',
               '".$_POST['lname']."','".$_POST['email']."','".$_POST['address']."','".$_POST['pincode']."',
          '".$_POST['phonenumber']."','".$_POST['pwd']."','".$_POST['confirmpassword']."')");
          header("location:thanku.php");
     }
?>