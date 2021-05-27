<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>/WEB-INF/views/insert.jsp</h1>
<form action="./insert" method="post">
아이디 : <input type="text" name="id"><br>
비밀번호 : <input type="password" name="pass"><br>
이름 : <input type="text" name="name"><br>
성별 : <input type="checkbox" name="남자" value="남자">남자
<input type="checkbox" name="여자" value="여자">여자<br> 
<input type="submit" value="회원가입">
</form>
</body>
</html>