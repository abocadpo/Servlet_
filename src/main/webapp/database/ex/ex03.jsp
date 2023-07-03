<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form method="post" action="/db/user/insert">
	
		<label>이름</label><input type="text" name="name"><br>
		<label>생일</label><input type="text" name="birthday"><br>
		<label>이메일</label><input type="text" name="email"><br>
		<textarea rows=5 cols=50 name="introduce">
	</form>
	
</body>
</html>