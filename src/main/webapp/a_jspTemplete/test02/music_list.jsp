<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>곡 리스트</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
  <style>
  	header {
  		height:70px;
  	}
  	nav {
  		height:50px;
  	}
  	footer {
  		height:50px;
  	}
  	
  </style>
</head>
<body>
	<%@ include file="data.jsp" %>
	<div class="container">
	<jsp:include page="header.jsp" />
	<jsp:include page="menu.jsp" />
		<section>
			<article class="artist my-3">
				<div class="artist-box d-flex border border-success p-3">
					<div class="artist-image">
						<img width="150" src="http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG" alt="아이유">
					</div>
					<div class="artist-info ml-3">
						<h1><%=artistInfo.get("name") %></h1>
						<div><%=artistInfo.get("agency") %></div>
						<div><%=artistInfo.get("debute")%> 데뷔</div>
					</div>
				</div>
			</article>
			<article>
				<h1>곡 목록</h1>
				<table class="table text-center table-sm">
					<thead>
						<tr>
							<th>no</th>
							<th>제목</th>
							<th>앨범</th>
						</tr>
					</thead>
					<tbody>
					 	<%for(Map<String, Object> music : musicList) {%>
						<tr>
							<td><%=music.get("id") %></td>
							<td><a href="/a_jspTemplete/test02/music_detail.jsp?id=<%=music.get("id") %>"><%=music.get("title") %></a></td>
							<td><%=music.get("album") %></td>
						</tr>
						<% } %>
					</tbody>
				</table>
			</article>
		</section>
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>