package com.maeun.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		int price = Integer.parseInt(request.getParameter("price"));
		
		out.println(""
				+ "<html>"
				+ "\n	<head>"
				+ "\n		<title>주문하기</title>"
				+ "\n	</head>"
				+ "\n	<body>");
		
		if(!address.contains("서울시")) {
			out.println(""
					+ "\n		<h4>배달 불가 지역입니다.</h4>");
		} else if (card.equals("신한카드")) {
			out.println(""
					+ "\n		<h4>결제 불가 카드 입니다.</h4>");
		} else {
			out.println(""
					+ "\n		<h4>" + address + " 배달 준비중</h4>"
					+ "\n		<hr>"
					+ "\n		<div>결제금액: " + price + "</div>");
		}
		
		out.println(""
				+ "		</body>"
				+ "\n</html>");
		
	}
	
}
