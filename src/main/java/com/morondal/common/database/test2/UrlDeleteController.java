package com.morondal.common.database.test2;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.morondal.common.database.ex.MysqlService;

@WebServlet("/db/url/delete")
public class UrlDeleteController extends HttpServlet{
	
	// 특정 사이트 정보를 삭제한다.
	// id를 전달 받고, 일치하는 행을 삭제한다.
	// doPost는 예외상황
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "DELETE FROM `url` WHERE `id` = " + id + ";";
		
		mysqlService.update(query);
		
		response.sendRedirect("/database/test/url_list.jsp");
		
	}
	
}
