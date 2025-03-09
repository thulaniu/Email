package com.cji.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cji.dto.DTO;
import com.cji.service.LoginMethods;

/**
 * Servlet implementation class SentServlet
 */
@WebServlet("/SentServlet")
public class SentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String gmailAddress = request.getParameter("gmailaddress");
		String states = "send";
		System.out.println(gmailAddress);
		
		DTO user5 = new DTO();
		user5.setGmailaddress(gmailAddress);
		user5.setStates(states);
		
		List<DTO> returnValue = LoginMethods.getAllUsersByStates(user5);
		request.getSession().setAttribute("userobject2", returnValue);
		response.sendRedirect("SentMassages.jsp");
	}

}
