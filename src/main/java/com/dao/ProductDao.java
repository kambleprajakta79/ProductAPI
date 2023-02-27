package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.utility.DbConnection;

public class ProductDao {

	static Connection con = DbConnection.getConnection();
	
	public boolean addProduct(int product_ID, String product_Name, String product_Type, String catagory,
			int product_Price) 
	{
		String query ="insert into products(product_ID,product_Name,Product_Type,Product_Category, Product_Price) values(?,?,?,?,?)";
		
		try
 		{
 			PreparedStatement ps = con.prepareStatement(query);
 			ps.setInt(1, product_ID);
 			ps.setString(2, product_Name);
 			ps.setString(3, product_Type);
 			ps.setString(4, catagory);
 			ps.setInt(5, product_Price);
 			
 			
 			int i = ps.executeUpdate();
 		
	 		if(i>0)
	 		{
	 			return true;
	 		}
	 		
 		}
 		catch(Exception e){
 			e.printStackTrace();
 		}
		return true;
	}
	
	
	public boolean deleteProduct(int product_ID) 
	{
		String query ="DELETE FROM products WHERE Product_ID=?;";
		
		try
 		{
 			PreparedStatement ps = con.prepareStatement(query);
 			ps.setInt(1, product_ID);
 			
 			int i = ps.executeUpdate();
 		
	 		if(i>0)
	 		{
	 			return true;
	 		}
	 		
 		}
 		catch(Exception e){
 			e.printStackTrace();
 		}
		
		return true;
	}


	public boolean updateProduct(int product_ID, String product_Name, String product_Type, String catagory,
			int product_Price) 
	{
		String query ="update products SET Product_Name=?, Product_Type=?, Product_Category=?, Product_Price=? WHERE Product_ID=?;";
		try
 		{
 			PreparedStatement ps = con.prepareStatement(query);
 			
 			ps.setString(1, product_Name);
 			ps.setString(2, product_Type);
 			ps.setString(3, catagory);
 			ps.setInt(4, product_Price);
 			ps.setInt(5, product_ID);
 			
 			
 			int i = ps.executeUpdate();
 		
	 		if(i>0)
	 		{
	 			return true;
	 		}
	 		
 		}
 		catch(Exception e){
 			e.printStackTrace();
 		}
		
		return true;
	}

}
