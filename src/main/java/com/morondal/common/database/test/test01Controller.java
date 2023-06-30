package com.morondal.common.database.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.morondal.common.database.ex.MysqlService;

public class test01Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
	
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		String selectQuery = "SELECT * FROM `real_estate`;";
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		out.println("<html><head><title>매물 리스트</title></head><body>");
		
		
		
		
		
		
	}
	
}
