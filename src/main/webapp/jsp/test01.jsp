<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp 연습문제</title>
</head>
<body>
	<%
		// 1. 점수들의 평균 구하기
		int sum = 0;
		int[] scores = {80, 90, 100, 95, 80};
		for(int getScores : scores){
			sum += getScores;
		}
		double average = sum / (double)(scores.length);
	%>
	<%
		// 2. 채점 결과
		int scoreSum = 0;
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		
		for(String score : scoreList){
			if(score.equals("O")) {
				scoreSum += 10;
			}
		}
	
	%>
	
	<%! 
		// 1부터 n까지의 합계를 구하는 함수
		public int addNumber(int number){
			int sum = 0;
			for(int i = 1; i <= number; i++) {
				sum += i;
			}
			return sum;
	}
	%>
	
	<%
		String birthDay = "20010820";
		
		String yearString = birthDay.substring(0,4);
		int year = Integer.parseInt(yearString);
		
		int age = 2022 - year + 1;
	
	%>
	
	<h1>점수 평균은 <%= average %> 입니다.</h1>
	<h1>체점 결과는 <%= scoreSum %>점 입니다.</h1>
	<h1>1에서부터 50까지의 합은 <%= addNumber(50) %></h1>
	<h1><%= birthDay %> 의 나이는 <%= age %>살 입니다.</h1>
</body>
</html>