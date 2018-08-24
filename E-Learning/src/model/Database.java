package model;

import java.sql.*;

public class Database {

	static Connection con;
	public static Connection dataConnection()
	{
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","root");
		System.out.println("Database connected");		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	return con;
	}
}
