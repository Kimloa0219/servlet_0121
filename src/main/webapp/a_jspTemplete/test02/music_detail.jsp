<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>곡 정보</title>

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

	<%@include file="data.jsp" %>
	<%
		
		//title 이 null 이 아닐때
		String musicIdString = request.getParameter("id");
		
		//id 가 null 이 아닐대
		String title = request.getParameter("title");
		
		Map<String, Object> target = null;
		
		if(musicIdString != null) { // null 은 등호 표기 되는지
			int musicId = Integer.parseInt(request.getParameter("id")); //musicIdString 넣어도 되는지
			for(Map<String, Object> music : musicList){
				if((Integer)music.get("id") == musicId) {
					target = music;
				}
			}
		} else if(title != null) {
			for(Map<String, Object> music : musicList) {
				if(music.get("title").equals(title)) {
					target = music;
				}
			}
		}
		
	
	%>
	<div class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		<section>
			<%if(target != null) {
				int time = (Integer)target.get("time");
			%>
			<article class="music-info my-3">
				<h1>곡 정보</h1>
				<div class="music-box d-flex border border-success p-3">
					<div class="music-image">
						<img width="200" src="<%=target.get("thumbnail") %>" alt="삐삐">
					</div>
					<div class="artist-info ml-3">
						<div class="display-4"><%=target.get("title") %></div>
						<div class="text-success"><%=target.get("singer") %></div>
						<div>앨범 : <%=target.get("album") %></div>
						<div>재생시간 : <%=time / 60 %>:<%=time % 60 %></div>
						<div>작곡가 : <%=target.get("composer") %></div>
						<div>작사가 : <%=target.get("lyricist") %></div>
					</div>
				</div>
			</article>
			<article class="music-lyrics my-3">
				<h1>가사</h1><hr>
				<div>가사 정보 없음</div><hr>
			</article>
			<%} else { %>
			<article>
				<div class="display-4 text-danger font-weight-bold">검색 결과 없음</div>
			</article>
			<% } %>
		</section>
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>