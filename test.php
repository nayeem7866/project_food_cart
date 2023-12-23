<html>
<head>
	<title>

  </title>
  <link href="https://fonts.googleapis.com/css?family=Dancing+Script|Lobster&display=swap" rel="stylesheet">

  <link href="https://fonts.googleapis.com/css?family=PT+Serif&display=swap" rel="stylesheet">
</head>

<body style="margin:0px">
	<?php
	   include('header.php')
	 ?>
	<?php
	$con=mysqli_connect('localhost','root','','customers');
  if(isset($_POST['cart']))
  {	 
  	  mysqli_query($con,"insert into cart_details(pid,userid,quantity)values('".$_GET['id']."','". $_SESSION['user']."',
  	  	'".$_POST['qunty']."')");
  }
$show=mysqli_query($con,"select * from addproduct where Product_id='".$_GET['id']."'");
$r=mysqli_fetch_array($show);

 echo "<div style='height:100%;width:100%;margin-bottom:-157px;padding-top:50px;'>
 <div style='height:550px;width:50%;background-color:whitesmoke;float:left;'>
 <?php
        <div><img src='admin/$r[4]' style='height:350px;width:450px;padding:40px;'><br>
         
         <div id=lp1><b><span id='lp'>Product Discription:</span></b> $r[2]</div>
        </div>
</div>
<div style='height:550px;width:50%;background-color:whitesmoke;float:right;margin-top:-500px;padding-top:50px;'>
<div id='name'><span>$r[1]</span></div>
<div style='color:black;font-size:20px;margin-top:5px;'><span>Product Id   $r[0]</span></div>
<div style='color:black;font-size:20px;margin-top:5px;'><span>Price &#8377;$r[5]</span></div>
<div style='color:black;font-size:20px;margin-top:5px;'><span>Product Category: $r[3]</span></div>
<div style='color:black;font-size:20px;margin-top:30px;margin-bottom:30px;'><span>Delivery in 2-4 Hours</span></div>
<div style='color:black;font-size:20px;margin-top:30px;margin-bottom:30px;'><span>Payment Option (COD)</span></div>
<div><br>";

if(isset($_SESSION['user']))
{
echo "<form method='POST'>
<input type='number' name='qunty' placeholder='Quantity' style='height:30px;text-indent:20px;' required maxlength='1'>
<input type='submit' name='cart' value='Add Cart' style='width:150px;height:30px;background-color:#8b4513;border:none;
 color:white;font-size:18px;font-weight: bold;'>
</form>";
 
?>


</br>
  <a href='order.php'> <input type='submit' value='Place Order'style='width:330px;height:35px;font-size:20px;border:none;color:white;background-color:maroon;font-weight: bold;letter-spacing: 2px;'></a>

<?php


 
}
  else {
    echo "<div style='color:red'>Please login first To place order</div>";
  }
?>

</div>
</div>
</div>


<?php
  include('footer.php')
?>
</body>
</html>

<style >
#lp1
{
  width: 70%;
  height: 20%;
  margin-left: 5%;
  font-family: 'PT Serif', serif;
}
#lp
{
  font-size:20px;
  margin-top:5px;
  color: red;
  font-family: 'Dancing Script', cursive;
  font-family: 'Lobster', cursive;
}
#name
{
  color:maroon;
  font-size:30px;
  margin-top:40px;
  margin-bottom:30px;
  font-family: 'Dancing Script', cursive;
  font-family: 'Lobster', cursive;
}
</style>