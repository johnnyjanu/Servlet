package com.maeun.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maeun.common.MysqlService;

@WebServlet("/db/bookmark/delete")
public class Test02Deleter extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String id = request.getParameter("id");
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		String query = "DELETE FROM `bookmark`\r\n"
				+ "WHERE `id` = " + id + ";";
		
		mysqlService.update(query);
		
		response.sendRedirect("/db/bookmark/bookmarkList.jsp");
		
	}

}
