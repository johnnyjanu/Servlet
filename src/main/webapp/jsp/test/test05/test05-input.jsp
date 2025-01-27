<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post Method 2 input</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

	<div class="wrap m-3">
		<h1 class="font-weight-bold">길이 변환</h1>
		
		<form method="post" action="/jsp/test/test05/test05.jsp">
			<div class="d-flex mb-2">
				<input type="text" name="length" class="form-control col-2"><div class="ml-1 d-flex align-items-end font-weight-bold">cm</div>
			</div>
			<label for="inch" class="mr-1">인치</label><input type="checkbox" id="inch" name="unit" value="inch" class="m-1">
			<label for="yard" class="m-1">야드</label><input type="checkbox" id="yard" name="unit" value="yard" class="m-1">
			<label for="feet" class="m-1">피트</label><input type="checkbox" id="feet" name="unit" value="feet" class="m-1">
			<label for="meter" class="m-1">미터</label><input type="checkbox" id="meter" name="unit" value="meter" class="m-1"><br>
			<button type="submit" class="btn btn-success">변환</button>
		</form>
	</div>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>
</html>