<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 기본객체</title>
</head>
<body>
<h1>로그인</h1>

	<%
	String check =(String)session.getAttribute("loginCheck");
	if ( check == null ) {
		%><form action="01LoginProcess.jsp" method="post">
		아이디 : <input type="text" name="id"><br>
	    암호 : <input type="password" name="pw"><br>
	    <input type="submit" value="로그인"><input type="reset" value="취소">
	</form><%
} else {
	%>
	<form action="01LogoutProcess.jsp" method="post"> <%= session.getAttribute("loginName")%> 님, 
	<input type="submit", value="로그아웃"><input type="reset" value="취소">
	<%
}
%>
</body>
</html>