package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ProductDao;

@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int product_ID = Integer.parseInt(request.getParameter("product_ID"));
		String product_Name = request.getParameter("product_Name");
		String product_Type = request.getParameter("product_Type");
		String catagory = request.getParameter("catagory");
		int product_Price = Integer.parseInt(request.getParameter("product_Price"));
		
		ProductDao pd = new ProductDao();
		
		try 
		{
			boolean b = pd.addProduct(product_ID,product_Name, product_Type, catagory, product_Price);
			
			if(b)
			{
				response.sendRedirect("addProduct2.jsp");
			}
			else
			{
				response.sendRedirect("addProduct.jsp");
			}
			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

	

}
