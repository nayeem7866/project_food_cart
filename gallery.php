<html>
<head>
	<title>Gallery page</title>
  <link href="https://fonts.googleapis.com/css?family=PT+Serif&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
       integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
       <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstapcdn.com/bootatrap/4.3.1/css/bootstrap.min.css">
</head>

<body>
  <?php
    include('header.php')
?>
	<?php
	           $con=mysqli_connect('localhost','root','','customers');
             $show=mysqli_query($con,"select * from addproduct");
             echo  "<div class='container'style='margin-top:80px;'>";
             echo "<center><h1 style='color:maroon;'>Product Gallery</h1></center>";
             echo  "<div class='row'>";
              while($r=mysqli_fetch_array($show))
              { 

                echo  "<div class='col-md-3' style='padding-top:30px;'>";
                echo"  <img src='admin/$r[4]' style='width:250px;height:150px;' class='img-fluid'><br>";
                echo "<center><span style='font-size:18px;'><b>$r[1]</b></span></center>";
                echo "</div>"; 
              }
             echo "</div>";
             echo "</div>";
?>

</body>
</html>
<?php
echo "</br>";
echo "</br>";
include('footer.php')
?>  
<style type="text/css">
body
{
  margin: 0;
  padding: 0;
  background: url("images/gl.jpg");
  background-repeat: no-repeat;
  background-size: cover;
}
h1
{
  font-family: 'Lobster', cursive;
}
img:hover
{
  cursor:crosshair;
  transform:scale(1.2);
  transition:.3s; 
  overflow: hidden;
}
</style>