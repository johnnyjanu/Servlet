package com.maeun.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.maeun.common.MysqlService;

@WebServlet("/db/bookmark/create")
public class Test02Controller extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		if(name != "" && url != "") {
			MysqlService mysqlService = new MysqlService();
			mysqlService.connect();
			
			String query = "INSERT INTO `bookmark`\r\n"					
					+ "(`name`, `url`)\r\n"
					+ "VALUE\r\n"
					+ "('" + name + "', '" + url +  "');";
			
			mysqlService.update(query);			
			
			response.sendRedirect("/db/bookmark/bookmarkList.jsp");			
		} else {
			response.sendRedirect("/db/bookmark/bookmarkList.jsp");			
		}
				
	}
	
	
	
//	CREATE TABLE `bookmark` (
//			`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
//			`name` VARCHAR(32) NOT NULL,
//			`url` VARCHAR(128) NOT NULL,
//			`createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
//			`updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
//			) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
	
	
	
	
	

}
