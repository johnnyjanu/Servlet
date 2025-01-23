package com.maeun.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class Test10Controller extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		out.println(""
				+ "<html>"
				+ "\n	<head>"
				+ "\n		<title>로그인 결과</title>"
				+ "\n	</head>"
				+ "\n	<body>");
		
		if(!id.equals(userMap.get("id"))) {
			out.println(""
					+ "\n		<h1>id가 일치하지 않습니다.</h1>");
		} else if(!password.equals(userMap.get("password"))) {
			out.println(""
					+ "\n		<h1>password가 일치하지 않습니다.</h1>");
		} else {
			out.println(""
					+ "\n		<h1>" + userMap.get("name") + "님 환영 합니다.</h1>");
		}
		
		out.println(""
				+ "\n	</body>"
				+ "\n</html>");
		
		
	}
	
	// doPost 메소드 바깥쪽에 위치
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "hagulu");
	        put("password", "asdf");
	        put("name", "김인규");
	    }
	};
	

}
