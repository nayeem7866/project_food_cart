<?php
		  include ('menu.php');
?>
<?php

$con=mysqli_connect('localhost','root','','customers');
$show=mysqli_query($con,"select * from signup where id='".$_GET['id']."'");
$r=mysqli_fetch_array($show);
print "<center><table border=2 style='margin-left:300px;margin-top:70px;'>
<tr>
<th>ID</th>
<th>FirstName</th>
<th>LastName</th>
<th>Email Id</th>
<th>Address</th>
<th>Pincode</th>
<th>PhoneNumber</th>
<th>Password</th>
</tr>";
print "<tr>";
	print "<td>$r[0]</td>";
	print "<td>$r[1]</td>";
	print "<td>$r[2]</td>";
	print "<td>$r[3]</td>";
	print "<td>$r[4]</td>";
	print "<td>$r[5]</td>";
	print "<td>$r[6]</td>";
	print "<td>$r[7]</td>";
		print "</tr>";
	 
?>