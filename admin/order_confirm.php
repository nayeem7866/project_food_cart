<html>
<head>
	<title></title>
</head>
<body>
	<?php
		   include ('menu.php');
		  ?> 
        <form class="form-controls" method="POST">
               <span>Order Status</span>
                <select class="input" name="stat">
                    <option >Select Item</option>
                    <option >Confirm Order</option>
                    <option >Cancel Order</option>
                    <option >Dispatch</option>
                    <option >Order Delivered</option>
                </select><br>
             <input type="submit" name="btn" id="go" value="Update">
    </form>
</body>
</html>
  <?php
        $con=mysqli_connect('localhost','root','','customers');
        echo "<center>helo</center>";
        $show=mysqli_query($con,"select * from order_history where order_number='".$_GET['id']."'");
         $r=mysqli_fetch_array($show);
     if(isset($_POST['btn']))
     {
        echo "<center>done </center>";
           mysqli_query($con,"insert into order_history  (order_number,order_status,user_id) values
                    ('".$r['order_number']."','".$_POST['stat']."','".$r['user_id']."')");
           mysqli_query($con,"update orrder set status='".$_POST['stat']."' where order_id='".$r['order_number']."'");

    
     }

     ?>


<style>
	
.form-controls
{
    margin-left: 35%;
    margin-top: 10%;
    width: 30%;
	height:35%;
	background-color: #618685;
	border-radius: 5px;
	padding-top: 10%;
	padding-left: 5%;

}
span
{
    font-size: 20px;
    font-family: Arial;
    font-weight: bold;


}
.msg
{
	
	color: red;
	font-size: 20px;
	text-align: center;
}
.input
{
	width: 35%;
	height: 15%;
	border-radius: 5px;
	border: none;
	outline: none;
}
option
{
	font-size: 18px;
}
#go
{
    width: 250px;
    height: 40px;
    margin-left: 4%;
    font-weight: bold;
    letter-spacing: 2px;
    font-size: 18px;
    text-transform: uppercase;
    cursor: pointer;
    border: none;
    outline: none;
    border-radius: 10px;
    margin-top: 10%;
}
#go:hover
{
    background:orchid;
}
 
</style>
