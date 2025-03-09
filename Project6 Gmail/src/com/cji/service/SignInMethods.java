package com.cji.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.cji.dto.DTO;
import com.cji.util.Util;

public class SignInMethods {
	
	public static boolean registerUser(DTO user2) throws SQLException{
		boolean returnValue = false;
		Connection connection = null;
		PreparedStatement preSta = null; 
		PreparedStatement preSta1 = null;
		
		try {
			connection = Util.getConnection();
			String selectQuery = "Select * from gmailusers where gmailaddress=?";
			String insertSQL = "insert into gmailusers(gmailaddress,password,contactno,country) values (?,?,?,?)";
			
			preSta1 = connection.prepareStatement(selectQuery);
			preSta1.setString(1, user2.getGmailaddress());
			ResultSet rs = preSta1.executeQuery();
			
			if(rs.next()) {
				returnValue= false;
			}else {
				preSta = connection.prepareStatement(insertSQL);
				preSta.setString(1, user2.getGmailaddress());
				preSta.setString(2, user2.getPassword());
				preSta.setString(3, user2.getContactno());
				preSta.setString(4, user2.getCountry());
				returnValue = preSta.execute();
				returnValue = true;
			}
	
		}catch(SQLException e){
			System.out.println(e.getMessage());
		}finally {
		    try {
		        if (preSta1 != null) {
		            preSta1.close();
		        }
		        if (preSta != null) {
		            preSta.close();
		        }
		        if (connection != null) {
		            connection.close();
		        }
		    } catch (SQLException e) {
		        System.out.println("Error closing resources: " + e.getMessage());
		    }
		}
		
		return returnValue;
		
	}

}
