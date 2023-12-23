
<!DOCTYPE html>
<html>
<head>
<style>
* {
  box-sizing: border-box;
}

.column {
  float: left;
  width: 33%;
  padding: 20px;
}


.row:after {
  content: "";
  display: table;
  clear: both;
}

@media screen and (max-width: 992px) {
  .column {
    width: 50%;
  }
}

@media screen and (max-width: 600px) {
  .column {
    width: 100%;
  }
}
</style>
</head>
<body>

<div><h1>our products<h1></div>
<div class="row" style="width: 100%;">
<?php

$con=mysqli_connect('localhost','root','','customers');
$show=mysqli_query($con,"select * from addproduct");
while($r=mysqli_fetch_array($show))
{  
 echo "<div class='column'  style='background-color:whitesmoke;margin-top:10px;border:1px solid black ;'>
    <a href='test.php?id=$r[0]' style='text-decoration: none;' >

<div style='float:left;'class='i' ><img src='admin/$r[4]'style='height:150px;width:180px;margin-right:40px;'></div>
<div style='padding:10px;color:black;'><span '>$r[1]</span></div>
<div style='padding:10px;color:black;'><span '>&#8377;$r[5]</span></div>
<div style='padding:10px;color:black;'><span '>$r[3]</span></div>
</a>
  </div>";
  }
  ?>
</div>

</body>
</html>
<style>
.i:hover
{
cursor:pointer;
transform:scale(1.3);
transition:.3s;
}
h1
{
  color: maroon;
  font-size: 40px;
  text-align:center;
  font-family: 'Lobster', cursive;
  text-transform: capitalize;
}

</style>