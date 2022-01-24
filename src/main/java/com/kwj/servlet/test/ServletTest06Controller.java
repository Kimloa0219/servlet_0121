package com.kwj.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test06")
public class ServletTest06Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
//		String numberString1 = request.getParameter("number1");
//		String numberString2 = request.getParameter("number2");
//		
//		int number1 = Integer.parseInt(numberString1);
//		int number2 = Integer.parseInt(numberString2);
		
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
		int addtion = number1 + number2;
		int substraction = number1 - number2;
		int multiplication = number1 * number2;
		int division = number1 / number2;
		
//		{"addtion":123, "subtraction":54, "multiplication":123, "division":130}
		
		out.println("{\"addtion\":" + addtion + ", \"subtraction\":" + substraction + ","
				+ " \"multiplication\":" + multiplication + ", \"division\":" + division + "}");
				
	}

}
