<!DOCTYPE html>
<html>
<head>
  <title>Payment</title>
  <link rel="stylesheet" type="text/css" href="order.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
       integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
  <?php
    include('header.php')
  ?>

       <div class="container" id="main">
          <div class="row">
               <form method="POST" action="" class="controls">
                   
                  <div class="form-group ">
                    
                        <input type="text" name="fname" class="form-control"  placeholder="First Name" required 
                        id="input1">
                        <input type="text" name="lname" class="form-control " placeholder="Last Name"required
                        id="input"/>
                        <input type="text" name="address" class="form-control " placeholder="Address" required
                          id="input" />
                        <input type="text" name="lmark" class="form-control" placeholder="Landmark" required
                          id="input"/>
                        <input type="text" name="pincode" class="form-control" placeholder="Pincode" limit="6" required  id="input"/>
                        <input type="Email" name="email" class="form-control" placeholder="Email Id" required 
                          id="input"/>
                        <input type="text" name="phonenumber"class="form-control" placeholder="Phone Number" required limit="10" id="input"/>
                        <input type="text" name="altno" class="form-control"placeholder="Alternate Number" required 
                           id="input"/>
                         <div>
                            <label id="pay">PAYMENT MODE</label>
                           <input type="radio" name="radio" id="option1" value="COD" /> COD
                        
                           <input type="radio" name="radio" id="option2"  value="Online"/> Online
                         </div>

                  
                      <input class='form-control' name="btn" type="submit" value="Place Order" id="sub"/>
                   </div>
                 </form>
              
            </div>
       </div>
</body>
</html>
 <?php
     if(isset($_POST['btn']))
     {
        
        if($_POST['radio']=='COD') 
        {
          //session_start();
          $con=mysqli_connect('localhost','root','','customers');
        
              mysqli_query($con,"insert into address (user_id,firstname,lastname,
               address,landmark,pincode,phone_number,alternate_number,email_id) values('".$_SESSION['user']."','".$_POST['fname']."',
               '".$_POST['lname']."','".$_POST['address']."','".$_POST['lmark']."','".$_POST['pincode']."',
          '".$_POST['phonenumber']."','".$_POST['altno']."','".$_POST['email']."')");
          

          $r=mysqli_query($con,"select  * from address where user_id='".$_SESSION['user']."'");
              while( $s=mysqli_fetch_array($r))
              {
                $address_id=$s[0];
              }
                 $p=mysqli_query($con,"select  * from cart_details where userid='".$_SESSION['user']."'");
                   while($show=mysqli_fetch_array($p))
                   {
                     $product_id=$show[1];
                     $quantity=$show[2];
                      mysqli_query($con,"insert into orrder(user_id,product_id,quantity,address_id,status)values('".$_SESSION['user']."',
                      '$product_id','$quantity','$address_id','pending')");
                    }
               mysqli_query($con,"delete from cart_details where userid='".$_SESSION['user']."'");      
              $show=mysqli_query($con,"select * from order_history where user_id='".$_SESSION['user']."'");
              $a=mysqli_fetch_array($show);
              $show=mysqli_query($con,"select * from orrder where user_id ='".$_SESSION['user']."' and order_id != '".$a['order_number']."'");
           while($q=mysqli_fetch_array($show))
           {
              mysqli_query($con,"insert into order_history(order_number,order_status,user_id) values
              ('".$q['order_id']."','".$q['status']."','".$q['user_id']."')");
            }
          echo "<script> 
                   alert('Thank You For Your Order , your order has been dispatched');
                </script>";
        }
      else
      {
        echo "<script> 
                   alert('Thank You For Your Order ,we will make sure to keep you updated about your order');
                </script>";
       
      }
  }
?>
<?php
    echo "</br>";
    echo "</br>";
    include('footer.php')
?>