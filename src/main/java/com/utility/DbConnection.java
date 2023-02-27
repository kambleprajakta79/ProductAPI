package com.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	public static Connection getConnection() 
	{
		 
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/product";
			String user = "root";
			String pass = "";
			con = DriverManager.getConnection(url, user, pass);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return con;
		
	}
}
