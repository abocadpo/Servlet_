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

	<%
		int[] scores = {80, 90, 100, 95, 80};
		
		int sum = 0;
		for(int i = 0; i < scores.length; i++){
			sum += scores[i];
		}
		
		double average = sum / (double)scores.length;
	%>
	
	<h2>평균은 <%= average %> 입니다</h2>
	
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		
		int total = 0;
		for(String ox:scoreList) {
			if(ox.equals("O")) {
				total += 100 / scoreList.size();
			}
		}
	%>
	
	<h2>채점 결과는 <%= total %>점 입니다.</h2>
	
	
	<%!
		// 1부터 N까지 합을 구하는 함수
		public int sumAll(int number) {
			int sum = 0;
			for(int i = 1; i <= number; i++) {
				sum += i;
			}
			return sum;
		}
	%>
	
	<h2>1부터 50까지의 합은 <%= sumAll(50) %>입니다.</h2>
	
	<%
		String birthDay = "20010820";
		int year = Integer.parseInt(birthDay.substring(0, 4));
		int age = 2023 - year + 1;
	%>
	
	<h2><%= birthDay %>생의 나이는 <%= age %>살입니다.</h2>
	

</body>
</html>