
<?php
		  include ('menu.php');

$con=mysqli_connect('localhost','root','','customers');
 if(isset($_GET['id']))
	 {
	 	$delid=$_GET['id'];
      mysqli_query($con,"delete from addproduct where id='$delid'");  
	 }
$show=mysqli_query($con,"select * from addproduct");

print "<div style='margin-left:300px;margin-top:70px;'><center><table border=2 >
<tr>
<th>IMAGE</th>
<th>ID</th>
<th>PRODUCT NAME</th>
<th>PRODUCT CATEGORY</th>
<th>PRICE</th>
<th>DISCOUNT</th>
<th>NET PRICE</th>
<th>PRODUCT DISCRIPTION</th>
<th>delete</th>
</tr>";
while($r=mysqli_fetch_array($show))
{
print "<tr>";
	print "<td><img src='$r[4]' height='100' width='200'></td>";
	print "<td>$r[0]</td>";
	print "<td>$r[1]</td>";
	print "<td>$r[3]</td>";
	print "<td>$r[5]</td>";
	print "<td>$r[6]</td>";
	print "<td>$r[7]</td>";
	print "<td>$r[2]</td>";
	print "<td><a href='product.php?id=$r[0]'>delete</a></td>";
		print "</tr></div>";
		}	
?>