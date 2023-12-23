<html>
<head>
	<title></title>
        <link href="https://fonts.googleapis.com/css?family=Lobster&display=swap" rel="stylesheet">

</head>
<body>


     <div id="head">
                   <b>Cash On Delivery</b>
                   <hr>
     </div>
	    <div class="message">
		   <h2>Thank You For Your Order</h2>
           <h3>we will make sure to keep you updated about your order</h3>
        
        <?php
                $con=mysqli_connect('localhost','root','','customers');
                $show=mysqli_query($con,"select from order_history where user_id='".$_SESSION['user']."'");

        ?>
      </div>
</body>
</html>
<style>
body
{
	margin: 0;
	background-color: #2F4F4F;
}
.message
{
    height: 300px;
    width: 600px;
    color: white;
    background-color: green;
    text-align: center;
    margin-left: 400px;
    margin-top: 100px;
    padding-top: 40px;  
    box-shadow: 10px 5px 5px; 
    border-radius: 3%;
}
#head
{
    text-align: center;
    padding-top: 20px;
    font-size: 40px;
    font-family: 'Lobster', cursive;
    color: maroon;
    word-spacing: 10px;
    text-transform: capitalize;
}
</style>