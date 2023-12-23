<!DOCTYPE html>
<html>
<head>
  <title></title>
  <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Alegreya&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
   
    <link rel="stylesheet" type="text/css" href="header.css">
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
  <span class="navbar-brand" id="titl">Kathi Junction Restaurant</span>
    <button class="navbar-toggler" data-toggle="collapse" data-target="#collapse_target">
    <span>KATHI </span>
    <span class="navbar-toggler-icon" ></span>
  </button>
  <div class="collapse navbar-collapse" id="collapse_target" style="width: 60%;">
       <ul class="navbar-nav" id="navi">
<?php
session_start();

  if(!(isset($_SESSION['user'])))
  {

  echo"      <li class='nav-item' style='width: 150px;' >
          <a class='nav-link' href='index.php' >HOME</a>
        </li>
        <li class='nav-item' style='width: 150px;'>
          <a class='nav-link' href='contact.php' >CONTACT</a>
        </li>
        <li class='nav-item' style='width: 150px;'>
          <a class='nav-link' href='about.php' >ABOUT US</a>
        </li>
       <li class='nav-item' style='width: 150px;'>
          <a class='nav-link' href='signup.php' >SIGN UP</a>
        </li>
        <li class='nav-item' style='width: 150px;'>
          <a class='nav-link' href='login.php' >SIGN IN</a>
        </li>";
      }
 else 
  {
  echo"  <li class='nav-item'  >
          <a class='nav-link' href='index.php' style='width: 150px;''>HOME</a>
        </li>
        <li class='nav-item' >
          <a class='nav-link' href='contact.php' style='width: 150px; ''>CONTACT</a>
        </li>
        <li class='nav-item' >
          <a class='nav-link' href='myorders.php' style='width: 150px;''>MY ORDERS</a>
        </li>
        <li class='nav-item' style='width: 150px;'>
          <a class='nav-link' href='gallery.php' >PRODUCTS</a>
        </li>
       
        <li class='nav-item' >
          <a class='nav-link' href='logout.php' style='width: 150px;''>LOGOUT</a>
        </li>
         <li class='nav-item' >
          <a class='nav-link' id='logo'href='cart.php' ><i class='fas fa-shopping-cart fa-1.8x'style='color:yellow'></i></a>
        </li>  ";
  } 
        ?>

      </ul>
  </div>
</nav>
</body>
</html>