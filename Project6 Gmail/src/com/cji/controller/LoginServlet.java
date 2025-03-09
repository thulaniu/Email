package com.cji.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cji.dto.DTO;
import com.cji.service.LoginMethods;
import com.cji.service.SignInMethods;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String gmailAddress = request.getParameter("gmailaddress");
		String password = request.getParameter("password");
		
		DTO loginDetails = new DTO();
		loginDetails.setGmailaddress(gmailAddress);
		loginDetails.setPassword(password);
		
		
		try {
			DTO returnValue = LoginMethods.loginUser(loginDetails);
			request.getSession().setAttribute("userobject1", returnValue);
			
			if(returnValue != null ) {
				//true
				response.sendRedirect("Home.jsp");
			}else {
				//false
				response.sendRedirect("LoginFail.jsp");
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			//e.printStackTrace();
		}
		
		
	}

}
