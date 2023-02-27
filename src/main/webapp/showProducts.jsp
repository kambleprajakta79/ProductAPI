<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="com.utility.DbConnection" %>
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
	}
</style>
</head>
<body>
<jsp:include page="index.jsp"></jsp:include>
	<div class = "mar">
		<h1>Product Details</h1>
		<table class="table">
		<tr>
			<th>Product ID</th>
			<th>Product Name</th>
			<th>Product Type</th>
			<th>Product Category</th>
			<th>base Price</th>
			<th>Discount</th>
			<th>GST</th>
			<th>Delivey Charge</th>
			<th>Final Price</th>
		</tr>
		<%
			// Connect to the database
			Connection con = DbConnection.getConnection();

			// Execute the query to fetch all products
			String query = "select products.product_ID, products.Product_Name,products.Product_Type, discount.Product_Category,products.Product_Price, discount.Discount, discount.GST, discount.Delivey_Charge from products inner join discount on products.Product_Category=discount.Product_Category;";
			Statement s = con.createStatement();
			ResultSet rs = s.executeQuery(query);

			while (rs.next()) {
				int productId = rs.getInt("products.product_ID");
				String productName = rs.getString("products.Product_Name");
				String productType = rs.getString("products.Product_Type");
				String productCategory = rs.getString("discount.Product_Category");
				double productPrice = rs.getDouble("products.Product_Price");
				int discount = rs.getInt("discount.Discount");
				int GST = rs.getInt("discount.GST");
				int Delivey_Charge = rs.getInt("discount.Delivey_Charge");
				double dis_in_rs = (discount*productPrice)/100;
				double gst_in_rs = (productPrice*GST)/100;
				double final_price = productPrice - dis_in_rs + gst_in_rs + Delivey_Charge ;
		%>
		<tr>
			<td> <%= productId %></td>
			<td> <%= productName %></td>
			<td> <%= productType %></td>
			<td> <%= productCategory %></td>
			<td> <%= productPrice %></td>
			<td> <%= dis_in_rs %></td>
			<td> <%= GST %>%</td>
			<td> <%= Delivey_Charge %></td>
			<td> <%= final_price %></td>
		</tr>
		<% 
			}

		%>
		</table>
	</div>
</body>
</html>