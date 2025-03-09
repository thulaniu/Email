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

/**
 * Servlet implementation class ComposeServlet
 */
@WebServlet("/ComposeServlet")
public class ComposeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String recipiant = request.getParameter("recipiant");
		String subject = request.getParameter("subject");
		String date = request.getParameter("date");
		String massage = request.getParameter("massage");
		String states = request.getParameter("states");
		String gmailAddress = request.getParameter("gmailaddress");
		System.out.println(gmailAddress);
		System.out.println(states);
		
		DTO msgDetails = new DTO();
		msgDetails.setRecipiant(recipiant);
		msgDetails.setSubject(subject);
		msgDetails.setDate(date);
		msgDetails.setMassage(massage);
		msgDetails.setGmailaddress(gmailAddress);
		msgDetails.setStates(states);
		
		boolean returnValue = LoginMethods.insertMassage(msgDetails);
		request.getSession().setAttribute("userobject3", returnValue);
		
		if(returnValue) {
			response.sendRedirect("massageSaved.jsp");	
		}else {
			response.sendRedirect("massageFail.jsp");
		}
		
		
	}

}
