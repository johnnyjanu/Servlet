<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자료구조 다루기</title>
</head>
<body>
	
	<%
		// 과일이름 리스트
		List<String> fruitList = new ArrayList<>();
		fruitList.add("사과");
		fruitList.add("바나나");
		fruitList.add("딸기");
		
		
		
	%>
	
	
	<table border="1">
		<% for(String fruit:fruitList) { %>
		<tr>
			<td><%= fruit %></td>
		</tr>
		<% } %>	
	</table>
	
	<%
		// 학생1 : 국어 : 90, 수학 : 95, 영어 : 80
		// 학생2 : 국어 : 100, 수학 : 80, 영어 : 70
		// ....
		
		// {"국어":90, "수학":95, "영어":80}
		// {"국어":100, "수학":85, "영어":70}
		
		// [{..}, {..}]
		// [{"국어":90, "수학":95, "영어":80}, {"국어":100, "수학":85, "영어":70}]
		
		List<Map<String, Integer>> scoreList = new ArrayList<>();
		
		Map<String, Integer> score1 = new HashMap<>();
		score1.put("국어", 90);
		score1.put("수학", 95);
		score1.put("영어", 80);
		
		scoreList.add(score1);
		
		Map<String, Integer> score2 = new HashMap<>();
		score2.put("국어", 100);
		score2.put("수학", 85);
		score2.put("영어", 70);
		
		scoreList.add(score2);
		
	%>
	
	<table border="1">
		<thead>
			<tr>
				<td>국어</td>
				<td>수학</td>
				<td>영어</td>
			</tr>
		</thead>
		<tbody>
			<% for(Map<String, Integer> score:scoreList) { %>
			<tr>
				<td><%= score.get("국어") %></td>
				<td><%= score.get("수학") %></td>
				<td><%= score.get("영어") %></td>
			</tr>
			<% } %>
		</tbody>
	</table>
	

	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>