package com.maeun.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test04")
public class Test04Controoler extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		
		out.print(
				"<html>"
				+ "\n	<head>"
				+ "\n		<title>리스트</title>"
				+ "\n	</head>"
				+ "\n	<body>"
				+ "\n		<ul>"
				);
		
		for(int i = 1; i <= 30; i++) {
			out.print("\n			<li><b>" + i + "번째 리스트</b></li>");
		}
		
		out.print("\n		</ul>"
				+ "\n	</body>"
				+ "\n</html>"
				);
		
		
		
	}
	
	

}
