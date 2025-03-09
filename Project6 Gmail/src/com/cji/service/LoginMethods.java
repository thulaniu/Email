package com.cji.service;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cji.dto.DTO;
import com.cji.util.Util;

public class LoginMethods {
	
	public static DTO loginUser(DTO loginDetails) throws SQLException {
		
		Connection connection = null;
		PreparedStatement preSta = null;
		DTO user = new DTO();
		System.out.println(loginDetails.getGmailaddress());
		try {
			connection = Util.getConnection();
			String selectQuery = "Select * from gmailusers where gmailaddress=?";
			
			preSta = connection.prepareStatement(selectQuery);
			preSta.setString(1, loginDetails.getGmailaddress());
			ResultSet rs = preSta.executeQuery();			
			
			if(rs.next()){
				System.out.println(rs.getString("gmailaddress"));
				user.setGmailaddress(rs.getString("gmailaddress"));
				return user;
			}else{
				System.out.println(rs.next());
				user = null;
			}
			
		}catch(SQLException e){
			System.out.println(e.getMessage());
		}
		System.out.println("user-------------------------------");
	    System.out.println(user);
		return user;
		
	}
	
	public static List<DTO> getAllUsersByStates(DTO user){
		
		Connection connection = null;
		PreparedStatement preSta = null;
		List<DTO> emailList = new ArrayList<DTO>();
		
		try {
		
			connection = Util.getConnection();
			String selectQuery = "Select * from massages where gmailaddress=? and states=?" ;
			
			preSta = connection.prepareStatement(selectQuery);
			preSta.setString(1, user.getGmailaddress());
			preSta.setString(2, user.getStates());
			ResultSet rs = preSta.executeQuery();
			
			
			while(rs.next()) {
				DTO user1 = new DTO();
				user1.setDate(rs.getString("date"));
				user1.setMassage(rs.getString("massage"));
				user1.setRecipiant(rs.getString("recipiant"));
				user1.setSubject(rs.getString("subject"));
				emailList.add(user1);
				
			}
		}catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		return emailList;

		
		
	}
	
public static List<DTO> getAllInboxUsers(DTO user){
		
		Connection connection = null;
		PreparedStatement preSta = null;
		List<DTO> emailList = new ArrayList<DTO>();
		
		try {
		
			connection = Util.getConnection();
			String selectQuery = "Select * from massages where recipiant=? and states=?" ;
			
			preSta = connection.prepareStatement(selectQuery);
			preSta.setString(1, user.getGmailaddress());
			preSta.setString(2, user.getStates());
			ResultSet rs = preSta.executeQuery();
			
			
			while(rs.next()) {
				DTO user1 = new DTO();
				user1.setDate(rs.getString("date"));
				user1.setMassage(rs.getString("massage"));
				user1.setRecipiant(rs.getString("recipiant"));
				user1.setSubject(rs.getString("subject"));
				emailList.add(user1);
				
			}
		}catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		return emailList;

		
		
	}
	
	public static boolean insertMassage(DTO msgDetails) {
		Connection connection = null;
		PreparedStatement preSta = null;
		boolean returnValue = false;
		
		try {
			connection = Util.getConnection();
			String InsertQuery = "insert into massages(date,massage,recipiant,subject,gmailaddress,states) values(?,?,?,?,?,?)";
			
			preSta = connection.prepareStatement(InsertQuery);
			preSta.setString(1, msgDetails.getDate());
			preSta.setString(2, msgDetails.getMassage());
			preSta.setString(3, msgDetails.getRecipiant());
			preSta.setString(4, msgDetails.getSubject());
			preSta.setString(5, msgDetails.getGmailaddress());
			preSta.setString(6, msgDetails.getStates());
			returnValue = preSta.execute();
			returnValue = true;
			
		}catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		System.out.println(returnValue);
		return returnValue;
		
		
	}
	
	
	

}
