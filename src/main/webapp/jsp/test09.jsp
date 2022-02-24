<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>   
<%@ page import="java.text.SimpleDateFormat" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D-day</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

<%
	Calendar calendar = Calendar.getInstance();
	
	// 2월 21일 : 0일 0부터 100 까지 함 그래서 1빼주고 시작 
	// 2월 22일 : 1일
	// 2월 23일 : 2일
	calendar.add(Calendar.DATE, -1);
	
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");
	
%>
	<div class="container">
		<h1>오늘부터 1일</h1>
		<% for(int i = 1; i <= 10; i++) { %>
		<% calendar.add(Calendar.DATE, 100); 
		   String dateString = formatter.format(calendar.getTime());
		%>
		<div class="display-4"><%=i * 100 %>일 : <span class="text-danger"><%=dateString %></span></div>
		
		<%
			} 
		%>
	</div>
</body>
</html>