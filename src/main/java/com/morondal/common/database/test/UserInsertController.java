package com.morondal.common.database.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.morondal.common.database.ex.MysqlService;

@WebServlet("/db/user/insert")
public class UserInsertController extends HttpServlet{
		
		@Override
		public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
			
//			response.setContentType("text/plain");
//			PrintWriter out = response.getWriter();
			
			// 이름, 생년월일, 이메일, 자기소개 전달 받고, 해당 데이터를 insert
			String name = request.getParameter("name");
			String birthday = request.getParameter("birthday");
			String email = request.getParameter("email");
			String introduce = request.getParameter("introduce");
			
			MysqlService mysqlService = MysqlService.getInstance();
			
			mysqlService.connect();
			
			String query = "INSERT INTO `new_user`\r\n"
					+ "(`name`, `yyyymmdd`, `email`, `introduce`)\r\n"
					+ "VALUE\r\n"
					+ "('" + name + "', '" + birthday + "', '" + email + "', '" + introduce + "');";
			
			int count = mysqlService.update(query);
			
			// 리스트 페이지로 이동
			// Redirect
			
			response.sendRedirect("/database/ex/ex02.jsp");
			
			
			
		}
		
	
}