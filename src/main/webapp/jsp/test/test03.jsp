<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Test03</title>
</head>
<body>
	
	<%
		// 날짜 정보를 보여주는 date, 시간은 time
		String what = request.getParameter("what");	
		
		Date now = new Date();
		
		SimpleDateFormat dateFormatter = new SimpleDateFormat("오늘 날짜 yyyy년 M월 d일");
		SimpleDateFormat timeFormatter = new SimpleDateFormat("현재시간 HH시 mm분 ss초");
		
		String dateString = dateFormatter.format(now);
		String timeString = timeFormatter.format(now);
		
		String resultString = null;
		// 현재날짜를 보여주고 싶을때
		if(what.equals("date")) {
			resultString = dateString;
		} else { // 현재 시간를 보여주고 싶을때
			resultString = timeString;
		}
		
	%>
	
	<div class="container">
		<div class="display-4"><%=resultString %></div>
	
	</div>
	
	<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>	
	
	
</body>
</html>