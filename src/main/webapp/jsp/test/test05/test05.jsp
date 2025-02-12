<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post Method 2</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

	<%
		int length = Integer.parseInt(request.getParameter("length"));
		String[] unitArray = request.getParameterValues("unit");
		
		String result = "";
		
		for(int i = 0; i < unitArray.length; i++) {
			if(unitArray[i].equals("inch")) {
				result += (length * 2.54) + "in";
			} else if(unitArray[i].equals("yard")) {
				result += (length * 91.44) + "yd";
			} else if(unitArray[i].equals("feet")) {
				result += (length * 30.48) + "ft";
			} else {
				result += (length / 100.0) + "m";
			}
			if(i != unitArray.length - 1) {
				result += "<br>";
			}
		}
	%>
	<div class="m-3">
		<h1 class="font-weight-bold mb-3">변환 결과</h1>
		<div class="h1"><%= length %>cm</div>
		<hr>
		<div class="h1"><%= result %></div>
	</div>
	
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>
</html>