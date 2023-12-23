<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body style="margin: 0px;">
	
<?php

$con=mysqli_connect('localhost','root','','customers');
$show=mysqli_query($con,"select * from addproduct");
echo "<div><h1 style='text-align:center;'>our products<h1></div>";

while($r=mysqli_fetch_array($show))
{
echo "<a href='' style='display:inline-block;width:30%;height:110px;text-decoration: none;background-color:grey;margin-left:10px;'>
<div style=''>
<div style='float:left;'><img src='$r[4]' style='height:110px;margin-right:40px;'></div>
<div style='padding:10px;color:yellow;'><span>$r[1]</span></div>
<div style='padding:10px;color:yellow;'><span>$r[5]</span></div>
<div style='padding:10px;color:yellow;'><span>$r[3]</span></div>
</div>
</a>";




}
	?>
</body>
</html>
