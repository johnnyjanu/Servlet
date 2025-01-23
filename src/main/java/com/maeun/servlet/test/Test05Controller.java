package com.maeun.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test05")
public class Test05Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String numberString = request.getParameter("number");
		int number = Integer.parseInt(numberString);
		
		out.print("<html>"
				+ "\n	<head>"
				+ "\n 		<title>구구단</title>"
				+ "\n	</head>"
				+ "\n	<body>"
				+ "\n		<h1>" + number + "단</h1>"
				+ "\n		<ul>");
		for(int i = 1; i <= 9; i++) {
			out.print("\n			<li>" + number + " X " + i + " = " + (number * i) + "</li>");
		}
		out.println("\n		</ul>"
				+ "\n	</body>"
				+ "\n</html>");
		
	}

}
