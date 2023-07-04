package com.morondal.common.database.test2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.morondal.common.database.ex.MysqlService;

@WebServlet("/db/url/insert")
public class test02Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
			
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "INSERT INTO `url` (`name`, `url`) \r\n"
					+ "VALUE\r\n"
					+ "('" + name + "', '" + url + "');";
		
		mysqlService.update(query);
		
		//redirect
		response.sendRedirect("/database/test/favorite_list.jsp");
			
	}
	
}