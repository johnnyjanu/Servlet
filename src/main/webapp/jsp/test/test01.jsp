<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트 요소</title>
</head>
<body>
	<!-- 1. 점수들의 평균 구하기 -->
	<% 
		int[] scores = {80, 90, 100, 95, 80};
		double average = 0;
		for(int i = 0; i < scores.length; i++) {
			average += scores[i];
		}
		average = average / scores.length;
	%>
	<h3>평균 : <%= average %></h3>
	
	<!-- 2. 채점 결과 -->
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int score = 0;
		for(String result:scoreList) {
			if(result.equals("O")) {
				score += 10;
			}
		}
	%>
	<h3>점수 : <%= score %>점</h3>
	
	<!-- 3. 1부터 n까지의 합계를 구하는 함수 -->
	
	<%!
		public int sumNumber(int n) {
			int sum = 0;
			for(int i = 1; i <= n; i++) {
				sum += i;
			}
			return sum;
	}
	%>
	
	<h3>50까지의 합 : <%= sumNumber(50) %></h3>
	
	<!-- 4. 나이 구하기 -->
	
	<%
		String birthday = "20010820";
		int year = Integer.parseInt(birthday.substring(0, 4));
		int age = 2025 - year + 1;
	%>
	
		<h3><%= birthday %> 의 나이는 <%= age %> 입니다.</h3>
	
	
</body>
</html>