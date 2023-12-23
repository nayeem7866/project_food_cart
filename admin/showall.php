<?php
		  include ('menu.php');
?>
<?php
$con=mysqli_connect('localhost','root','','customers');
$show=mysqli_query($con,"select * from signup");
print "<center><table border=2 style='margin-top:70px;margin-left:300px;width:76%;'>
<tr>
<th>id</th>
<th>firstname</th>
<th>lastname</th>
<th>details</th>
</tr>
";
while($r=mysqli_fetch_array($show))

{
	print "<tr>";
	print "<td>$r[0]</td>";
	print "<td>$r[1]</td>";
	print "<td>$r[2]</td>";

	print "<td><a href='all.php?id=$r[0]'> view detaials </a></td>";
	print "</tr>";
}

?>
