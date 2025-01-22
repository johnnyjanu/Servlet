package com.maeun.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class Ex05Controller extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// 이름과 생년월일을 전달 받고
		// 이름과 나이를 html 표현
		
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		
		int year = Integer.parseInt(birthday.substring(0, 4));
		
		int age = 2025 - year + 1;
		
		out.println(""
				+ "<html>"
				+ "\n	<head>"
				+ "\n		<title>정보</title>"
				+ "\n	<body>");
		
		out.println(""
				+ "\n		<h3>이름: " + name + "</h3>"
				+ "\n		<h3>나이: " + age + "</h3>");
		
		out.println(""
				+ "\n	</body>"
				+ "\n</html>");
		
	}

}
