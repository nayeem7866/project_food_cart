<html>
<head>
	<title></title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
 integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="myorders.css">
 
</head>
<body>
<?php
    include('header.php')
?>
      <div class="maindiv">
      	  
            <?php
             //session_start();
             	$con=mysqli_connect('localhost','root','','customers');
             	 $show=mysqli_query($con,"select * from orrder join addproduct on 
             	 	orrder.Product_id = addproduct.Product_id where user_id='".$_SESSION['user']."'"); 
print "<center><table class='table table-striped table-dark'>
  <thead>
<tr class='bg-success'>
<th scope='col'>Image</th>
<th scope='col'>Product_Name</th>
<th scope='col'>Quantity</th>
<th scope='col'>Product Id</th>
<th scope='col'>Price</th>
<th scope='col'>Status</th>
<th scope='col'>Details</th>
</tr>
</thead>"; 
             	 while($r=mysqli_fetch_array($show))
             	 {
                   print "<tbody>";
                   print "<tr class='bg-primary'>";
                   print "<th scope='row'><img src='admin/$r[image]'style='height:100px;width:200px;'></th>";
                   print "<td>".$r['product_name']."</td>";
                   print "<td>".$r['quantity']."</td>";
                   print "<td>".$r['Product_id']."</td>";
                    $z=0;
                    $x=$r['quantity'];
                    $y=$r['actual_price'];
                    $z=$x * $y; 
                   print "<td>".$z."</td>";
                   print "<td> ".$r['status']."</td>";
                   $c=$r['order_id'];
                   print "<td><a href='viewdetails.php?id=$c' style='text-decoration:none;color:white;'> view detaials </a></td>";
                   print "</tr>";
                   print "</tbody>";
                   
               }
                 print "</table>"; 
      echo  " </div>";
?>      
<?php
     include('footer.php')
?>
</body>
</html>

                  