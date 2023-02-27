package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ProductDao;

@WebServlet("/DeleteProductServlet")
public class DeleteProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int product_ID = Integer.parseInt(request.getParameter("product_ID"));
		
		ProductDao pd = new ProductDao();
		
		try 
		{
			boolean b = pd.deleteProduct(product_ID);
			
			if(b)
			{
				response.sendRedirect("deleteProduct2.jsp");
			}
			else
			{
				response.sendRedirect("deleteProduct.jsp");
			}
			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

}
