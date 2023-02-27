<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    <%@page import="com.utility.DbConnection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products API</title>
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
    	
	}
</style>
</head>
<body>
<jsp:include page="index.jsp"></jsp:include>
<div class="mar">
	<h1>Update Product</h1>
	<%
		
		int product_ID = Integer.parseInt(request.getParameter("product_ID"));
		
		
		

			Connection con = DbConnection.getConnection();

			String query = "SELECT * FROM products WHERE Product_ID=?";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setInt(1, product_ID);
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				// If the product ID exists, display the update form
				int id = rs.getInt("Product_ID");
				String name = rs.getString("Product_Name");
				String type= rs.getString("Product_Type");
				String category= rs.getString("Product_Category");
				int price = rs.getInt("Product_Price");

				%>
				<form action="UpdateProductServlet">
					
					<table class="table">
						<tr>
							<th>Product ID:</th>
							<td>
								<input type="text" name="product_ID" value="<%= id %>">
							</td>
						</tr>
						<tr>
							<th>Product Name:</th>
							<td>
								<input type="text" name="product_Name" value="<%= name %>">
							</td>
						</tr>
						<tr>
							<th>Product Type:</th>
							<td>
								<input type="text" name="product_Type" value="<%= type %>">
							</td>
						</tr>
						<tr>
							<th>
								<label for="catagory">Product Category:</label>
							</th>
							<td>
								<select class="form-select size" name="catagory" id="catagory">
									<option value="<%= category %>"><%= category %></option>
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
								<input type="text" name="product_Price" value="<%= price %>">
							</td>
						</tr>
						<tr>
							<th colspan="2">
								<input class="btn btn-outline-success" type="submit" value="Update product">
							</th>
						</tr>
					</table>
					
				</form>
				<%
			} 
			else 
			{
				// If the product ID does not exist, display an error message
				out.println("<p>Product not found.</p>");
			}

			// Close the database connection
			rs.close();
			pstmt.close();
			con.close();
		
	%>
</div>
</body>
</html>