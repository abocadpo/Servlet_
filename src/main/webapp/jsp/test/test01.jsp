<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test01</title>
</head>
<body>

	<h2>1번</h2>

	<%
		int[] scores = {80, 90, 100, 95, 80};
		
		int sum = 0;
		for(int i = 0; i < scores.length; i++){
			sum += scores[i];
		}
	%>
	
	<h3>평균 : <%= sum / 5 %></h3>
	
	<h2>2번</h2>
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		
		for(int i = 0; i )
	%>
	



</body>
</html>