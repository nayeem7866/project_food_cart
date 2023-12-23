<!DOCTYPE html>
<html>
<head>
	<title></title>
	 <link href="https://fonts.googleapis.com/css?family=Fredoka+One|Oleo+Script" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="dash.css">
</head>
<body>

<?php
include('menu.php');
?>

<?php

$con=mysqli_connect('localhost','root','','customers');
$show=mysqli_query($con,"select * from signup");
$row1=mysqli_num_rows($show);
$show=mysqli_query($con,"select * from addproduct");
$row2=mysqli_num_rows($show);
$show=mysqli_query($con,"select * from orrder");
$row3=mysqli_num_rows($show);
$show=mysqli_query($con,"select * from orrder where status='delivered'");
$row4=mysqli_num_rows($show);

  echo "<div class='b'>
    <ul class='list-group'>
         <li class='list-group-item d-flex justify-content-between align-items-center' id='b'>Number Of User Registered With Us <span class='badge badge-pill badge-primary'>$row1</span></li>
         <li class='list-group-item d-flex justify-content-between align-items-center' id='b'>Number Of Products On Our Website <span class='badge badge-pill badge-primary'>$row2</span></li>
         <li class='list-group-item d-flex justify-content-between align-items-center'id='b'>Nunmber Of Orders Ordered            <span class='badge badge-pill badge-primary'>$row3</span></li>
         <li class='list-group-item d-flex justify-content-between align-items-center' id='b'>Nunber Of Order Delivered          <span class='badge badge-pill badge-primary'>$row4</span></li>
     </ul>
    </div>";
?>

</body>
</html>

	