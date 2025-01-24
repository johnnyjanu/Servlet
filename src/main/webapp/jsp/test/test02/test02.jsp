<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form 태그</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
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
	<div class="m-2">
		<h1 class="font-weight-bolder">BMI 측정 결과</h1>
		<div class="d-flex">
			<div class="display-4">당신은</div>
			<div class="display-4 text-info ml-2 mr-2"><%= result %></div> 
			<div class="display-4">입니다.</div>
		</div>
		<div class="mt-2 font-weight-bold">BMI 수치 : <%= BMI %></div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>
</html>