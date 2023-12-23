<html>
<head>
	<title>Add Product</title>
	<link rel="stylesheet" type="text/css" href="addproduct.css">
</head>
<body>
	<?php
		  include ('menu.php');
		 ?>
		<div class="add-products">
            <h1 style="text-align:center">Add Product</h1>
			<form class="form-controls" method="POST" enctype="multipart/form-data">
                <label>Product Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="pname" placeholder="Enter Product Name" required class="input"><br>
                
                 <label>Product Category</label>&nbsp;&nbsp;&nbsp;&nbsp;
                <select class="input" name="pcategory">
                	<option>Select Item</option>
                	<option>Pizza</option>
                	<option>Chicken Roll</option>
                	<option>Biryani</option>
                	<option>Momo's</option>
                	<option>Tunduri Chicken</option>
                	<option>Chicken Tika</option>
                	<option>Tunduri Chicken</option>
                </select><br>
                <label>Product Image</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="file" name="filename" class="input"><br>
                <label>Price</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="price" placeholder="Enter Price" required class="input"><br>
                <label>Discount</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="discount" placeholder="Enter Discount" required class="input"><br>
                <label>Actual Price</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;
                <input type="text"  name="aprice" placeholder="Enter Actual Price" required class="input"><br>
                <span>Product Description</span>
                <textarea name="pdiscription" placeholder="Enter Message" required class="textarea"></textarea><br>
                <input type="submit" name="btn" id="go" value="submit">
			</form>
		</div>
<?php
     if(isset($_POST['btn']))
     {
      $name=$_FILES['filename']['name'];
      $destination='image/'.$name;

      $type=$_FILES['filename']['type'];
       echo $type;
      $source=$_FILES['filename']['tmp_name'];
      move_uploaded_file($source, $destination);

          $con=mysqli_connect('localhost','root','','customers');
          mysqli_query($con,"insert into addproduct (product_name,product_category,price,
               discount,actual_price,product_discription,image) values('".$_POST['pname']."',
               '".$_POST['pcategory']."','".$_POST['price']."','".$_POST['discount']."','".$_POST['aprice']."',
          '".$_POST['pdiscription']."','$destination')");
          header("location:orderrecieved.php");
     }
     
?>
</body>
</html>