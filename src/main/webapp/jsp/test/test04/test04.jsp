<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post Method 1</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
	
	<%
		int forNumber = Integer.parseInt(request.getParameter("forNumber"));
		int backNumber = Integer.parseInt(request.getParameter("backNumber"));
		String operator = request.getParameter("operator");
		
		double result = 0;
		
		if(operator.equals("plus")) {
			result = forNumber + backNumber;
			operator = "+";
		} else if(operator.equals("minus")) {
			result = forNumber - backNumber;
			operator = "-";
		} else if(operator.equals("multiple")) {
			result = forNumber * backNumber;
			operator = "X";
		} else {
			result = forNumber / backNumber;
			operator = "÷";
		}
		
	%>
	
	<h1>계산 결과</h1>
	<div class="d-flex">
		<div class="display-1"><%= forNumber %> <%= operator %> <%= backNumber %> = </div>
		<div class="display-1 text-primary ml-5"><%= result %></div>
	</div>
	
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>	
</body>
</html>