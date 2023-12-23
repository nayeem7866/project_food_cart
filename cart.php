 <!DOCTYPE html>
 <html>
 <head>
   <title></title>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 </head>
 <body>
  <?php
     include('header.php')
   ?>
   <div style="height:451px;">
  <?php
  $con=mysqli_connect('localhost','root','','customers');
   if(isset($_GET['id']))
   {
      $delid=$_GET['id'];
      mysqli_query($con,"delete from cart_details where id='$delid'");  
   }

    $show=mysqli_query($con,"select * from addproduct join cart_details on addproduct.Product_id = cart_details.pid where userid='".$_SESSION['user']."'"); 
    $total=0;  
print "<center><table class='table table-striped table-dark'>
  <thead>
<tr  class='bg-success'>
<th scope='col'>image</th>
<th scope='col'>Product Name</th>
<th scope='col'>quantity</th>
<th scope='col'>Product Id</th>
<th scope='col'>Price</th>
<th scope='col'>Total</th>
<th scope='col'>Remove</th>
</tr>
</thead>";
while($r=mysqli_fetch_array($show))
{
print "<tbody>";
    print "<tr  class='bg-primary'>";
  print "<th scope='row'><img src='admin/$r[image]' style='height:50px;width:100px;'></th>";
  print "<td>".$r['product_name']."</td>";
  print "<td>".$r['quantity']."</td>";
  print "<td>".$r['pid']."</td>";
  print "<td>".$r['actual_price']."</td>";
   $x=$r['quantity'];
  $y=$r['actual_price'];
  $z=$x * $y; 
  $total=$total+$z;
  print "<td>$z</td>";
  $i=$r['id'];
  print "<td><a href='cart.php?id=$i' style='text-decoration:none;color:white;'>Remove</a></td>";
    print "</tr>";
    print "</tbody>";

 }
 print "</table>";
 print "</center>";
echo "<div style='height:100px;'>";
echo "<span ><h1 style='margin-left:40%;'> Grand Total &#8377;$total</span>";
echo "<a href='order.php' style='margin-left:10%;'><input type='button' value='place order' style='font-size:20px;border:none;
          color:white;background-color:maroon;font-weight: bold;letter-spacing: 2px;width:200px;height:40px;border-radius:10px;'></a></h1>";
echo "</div>";
?>
</div>
<?php
     include('footer.php')
?>
 </body>
 </html>
