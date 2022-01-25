package com.kwj.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class ServletTest09Controller extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		String name = request.getParameter("name");
		String introduce = request.getParameter("introduce");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html><head><title>입사지원</title></head>");
		out.println("<body>");
		out.println("<h1>" + name +"님 지원이 완료 되었습니다.</h1><hr>");
		out.println("지원내용<br>");
		out.println(introduce);
		out.println("</body></html>");
		
	}

}
