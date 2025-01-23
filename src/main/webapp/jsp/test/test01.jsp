<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays;" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트 요소</title>
</head>
<body>
	<h3>1. 점수들의 평균 구하기</h3>
	<% 
		int[] scores = {80, 90, 100, 95, 80};
		double average = 0;
		for(int i = 0; i < scores.length; i++) {
			average += scores[i];
		}
		average = average / scores.length;
	%>
	<div>평균 : <%= average %></div>
	
	<h3>2. 채점 결과</h3>
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		
		
		
	%>
	
	
</body>
</html>