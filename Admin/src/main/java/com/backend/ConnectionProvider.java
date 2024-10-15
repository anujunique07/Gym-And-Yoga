package com.backend;
import java.sql.*;

public class ConnectionProvider {
	static Connection con;
	public static Connection CreateCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gym_database","root","anujit.mysql");			
		}catch(Exception e) {}
		return con;
	}
	
}
