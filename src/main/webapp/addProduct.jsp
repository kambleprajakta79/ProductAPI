<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products API</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" 
    crossorigin="anonymous">
<style>
	.mar
	{
		margin-left:20%;
		margin-top:30px;
		width:40%;
		text-align:center;
	}
	.size
	{
		width: 70%;
    	margin-left: 40px;
	}
</style>
</head>
<body>
<jsp:include page="index.jsp"></jsp:include>
	<div class = "mar">
	<form action="AddProductServlet">
		<h3>Add product</h3>
		<table class="table">
			<tr>
				<th>Product ID:</th>
				<td>
					<input type="text" name="product_ID">
				</td>
			</tr>
			<tr>
				<th>Product Name:</th>
				<td>
					<input type="text" name="product_Name">
				</td>
			</tr>
			<tr>
				<th>Product Type:</th>
				<td>
					<input type="text" name="product_Type">
				</td>
			</tr>
			<tr>
				<th>
					<label for="catagory">Product Category:</label>
				</th>
				<td>
					<select class="form-select size" name="catagory" id="catagory">
  						<option value="Clothing">Clothing</option>
  						<option value="Electronics">Electronics</option>
						<option value="Furniture">Furniture</option>
						<option value="Home Appliances">Home Appliances</option>
					</select>
					
				</td>
			</tr>
			<tr>
				<th>Product Price:</th>
				<td>
					<input type="text" name="product_Price">
				</td>
			</tr>
			<tr>
				<th colspan="2">
					<input class="btn btn-outline-success" type="submit" value="Add product">
				</th>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>