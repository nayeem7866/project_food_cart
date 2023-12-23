<html>
<head>
	<title></title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
   <?php
    include('header.php')
   ?>
   <div style="height:417px;margin-top:40px;">
<?php
 $con=mysqli_connect('localhost','root','','customers');
$show=mysqli_query($con,"select * from order_history where order_number='".$_GET['id']."'");

 print "<center><table class='table table-striped table-dark'>
  <thead>
<tr  class='bg-success'>
<th scope='col'>ORDER NUMBER</th>
<th scope='col'>STATUS</th>
<th scope='col'>DATE/TIME</th>
</tr>
</thead>";
while($r=mysqli_fetch_array($show))
{
   
  print "<tbody>";
  print "<tr  class='bg-primary'>";
  print "<th scope='row'>".$r['order_number']."</th>";
  print "<td>".$r['order_status']."</td>";
  print "<td>".$r['date/time']."</td>";
    print "</tr>";
    print "</tbody>";  
}
echo " </table>";
?>
</div>
<?php
     include('footer.php')
?>
</body>
</html>