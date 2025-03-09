package com.cji.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cji.dto.DTO;
import com.cji.service.SignInMethods;

/** 
 * Servlet implementation class SignInServlet
 */
@WebServlet("/SignInServlet")
public class SignInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String gmailAddress = request.getParameter("gmailaddress");
		String password = request.getParameter("password");
		String contactNo = request.getParameter("contactno");
		String country = request.getParameter("country");
		
		DTO user2 = new DTO();
		user2.setGmailaddress(gmailAddress);
		user2.setPassword(password);
		user2.setContactno(contactNo);
		user2.setCountry(country);
		
		boolean returnValue = false;
		try {
			returnValue = SignInMethods.registerUser(user2);
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			//e.printStackTrace();
		}
		
		if(returnValue) {
			response.sendRedirect("SignInSuccess.jsp");
		}else {
			response.sendRedirect("SignInFail.jsp");
		}
	}

}
