<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>test07</title>
</head>
<body>
	
	<%
		List<Map<String, Object>> list = new ArrayList<>();
    	Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
    	list.add(map);
    	map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
    	list.add(map);
    	map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
    	list.add(map);
    	map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
    	list.add(map);
    	map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
    	list.add(map);
    	map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
    	list.add(map);
    	map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
    	list.add(map);
		
    	String menu = request.getParameter("menu");
    	String point = request.getParameter("point");	
	%>
	
	
	
	<div class="container">
	
		<h1 class="text-center">검색 결과</h1>
			<table class="table text-center">
				<thead>
					<tr>
						<th>메뉴</th>
						<th>상호</th>
						<th>별점</th>
					</tr>
				</thead>
				<tbody>
					<% for(Map<String, Object> store:list) { 
					
						// 메뉴명이 일치하는지
						if(menu.equals(store.get("menu"))) {
							
						
						
						// 별점이 4.0 이상인지
						// 다운캐스팅 Down Casting
						double targetPoint = (Double)store.get("point");
						// point가 체크가 된 상태일때, 4.0이상인것
						//if(point == null || (point.equals("limit") && targetPoint >= 4.0)) {
							
						if(!menu.equals(store.get("menu"))){
							continue;
						}
						
						// point가 체크가 된상태, targetPoint 미만
						if(point != null && targetPoint < 4.0) {
							continue;
						}
						
						
					%>
					
					<tr>
						<td><%= store.get("name") %></td>
						<td><%= store.get("menu") %></td>
						<td><%= store.get("point") %></td>
					</tr>
					<%		} 
						
					
					} %>
				</tbody>
			</table>
			
	</div>
	
	
	<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>