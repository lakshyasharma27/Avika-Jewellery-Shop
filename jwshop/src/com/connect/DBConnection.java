package com.connect;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	public static Connection getConn()
	{
		try 
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chirag","root","root");
		return con;
		} catch (Exception e) 
		{
			return null;
		}
	}

}


