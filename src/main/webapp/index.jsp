<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products API</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<style>
    .sidebar 
    {
      background-color: #f2f2f2;
      height: 100vh;
      position: fixed;
      padding-top: 20px;
    }

    .nav-link 
    {
      font-size: 1.2rem;
      margin-bottom: 20px;
    }

    .nav-link.active 
    {
      color: #430745;
    }

    .main-content 
    {
      margin-left: 200px;
      padding: 20px;
    }

    @media (max-width: 992px) 
    {
      .sidebar {
        position: relative;
        height: auto;
      }
      .main-content {
        margin-left: 0;
      }
    }

</style>
</head>
<body>
	<div class="container-fluid ">
    <div class="row">
      <div class="col-lg-2 col-md-3 col-sm-12 sidebar">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link " href="showProducts.jsp">Show products</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="addProduct.jsp" >Add product</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="deleteProduct.jsp">Delete Product</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="updateProduct.jsp">Update Product</a>
          </li>
        </ul>
      </div>
      
    </div>
  </div>
</body>
</html>