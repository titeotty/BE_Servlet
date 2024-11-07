<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>타이틀</title>
</head>
<body>

<h1> 회원가입 </h1>
<form action="insert1.jsp" method="post">
 아이디 : <input type="text" name="memberId"><br>
 암호 : <input type="text" name="password"><br>
 이름 : <input type="text" name="name"><br>
 이메일 : <input type="text" name="email"><br>
 <input type="submit" value="가입">
 <input type="reset" value="취소">

</form>
</body>
</html>