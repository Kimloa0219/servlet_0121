<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	
		<!-- jsp 기본 사용법 -->
		<%-- jsp 주석 : 클라이언트에서는 사라진다 --%>
		<%-- 1에서 10까지 합 구하고 결과 출력하기 --%>
		
		<%
			// 자바 영역
			int sum = 0;
			for(int i = 0; i <= 10; i++){
				sum += i;
			}
			
		%>
		
		<h3>합계 : <%= sum %> </h3>
		<input type="text" value="<%=sum %>">
		
		<%
			List<String> animals = new ArrayList<>();
			animals.add("dog");
			animals.add("cat");
		%>
		
		<h4><%=animals.get(0) %></h4>
		<h4><%=animals.get(1) %></h4>
		
		<%!
			//클래스 안의 맴버변수, 메소드 선언
			
			private int number = 100;
			
			public String getHelloWorld(){
				return "Hello World";
			}
		%>
		<h4><%=getHelloWorld() %></h4>
		
		<%=  // 변수끼리의 연산도 가능
			number + 50 
		%>
		
	
</body>
</html>