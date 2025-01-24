<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form 태그</title>
</head>
<body>
	<%
		String heightString = request.getParameter("height");
		String weightString = request.getParameter("weight");
		int height = Integer.parseInt(heightString);
		int weight = Integer.parseInt(weightString);
		
		double BMI = weight / ((height / 100.0) * (height / 100.0));
		String result = null;
		if(BMI >= 30) {
			result = "비만";
		} else if(BMI >= 25 && BMI < 30) {
			result = "과체중";
		} else if(BMI >= 18.5 && BMI < 25) {
			result = "정상";
		} else {
			result = "저체중";
		}
		
	%>
	
	<h2>BMI 측정 결과</h2>
	<div>당신은 <%= result %></div>
	<div>BMI 수치 : <%= BMI %></div>
</body>
</html>