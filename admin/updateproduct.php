<html>
<head>
	<title>Update Product</title>
	<link rel="stylesheet" type="text/css" href="updateproduct.css">
</head>
<body>
	<?php
		  include ('menu.php');
	?>
		<div class="update-products">
            <h1 style="text-align:center;color:black";>Update Product</h1>
			<form class="form-controls" method="POST" action"">
                
                <input type="text" name="pname" placeholder="Enter Product Name" required class="input"><input type="textarea" name="tname" placeholder="Enter Message" required class="input"><br>
            
                <select class="input">
                	<option>Select Item</option>
                	<option>Pizza</option>
                	<option>Chicken Roll</option>
                	<option>Biryani</option>
                	<option>Momo's</option>
                	<option>Tunduri Chicken</option>
                	<option>Chicken Tika</option>
                	<option>Tunduri Chicken</option>
                </select> 
                
                <input type="text" name="price" placeholder="Enter Price" required class="input"> <input type="text" name="discount" placeholder="Enter Discount" required class="input"><input type="text" name="aprice" placeholder="Enter Actual Price" required class="input"><br>
                <input  type="file" name="img" required class="image"><br>
                <br>
                <input type="submit" id="go" value="Update">
			</form>
		</div>

</body>
</html>