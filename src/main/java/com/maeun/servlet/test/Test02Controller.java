package com.maeun.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test02Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		Date time = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("H시 m분 s초");
		
		String timeString = "현재 시간은 " +  formatter.format(time) + "입니다.";
		out.println(timeString);
		
		
		
		
		
	}
	
	
	
	
	
}
