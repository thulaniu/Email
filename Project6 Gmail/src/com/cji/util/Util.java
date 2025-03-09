package com.cji.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Util {

	private static final String DB_USER ="postgres";
	  private static final String DB_URL ="jdbc:postgresql://localhost:5432/cji";
	  private static final String DB_PASSWARD="thulani@12";
  private static final String DB_DRIVER="org.postgresql.Driver";
  
public static Connection getConnection() {
	
		
		try{
			Class.forName(DB_DRIVER);
		}catch(ClassNotFoundException e) {
			System.out.println("Driver class not found = "+e.getMessage());
			//return;
		}
		
		Connection connection = null;
		try {
		connection = DriverManager.getConnection( DB_URL,DB_USER,DB_PASSWARD );
		}catch(SQLException e){
			System.out.println(e.getMessage());
			//return;
		}
		if (connection != null) {
			System.out.println("Connection is active and running!");
		}else {
			System.out.println("Connection is null, recheck the connection");
		}
		return connection;
		
}

}
