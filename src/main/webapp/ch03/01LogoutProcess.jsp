<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 기본객체</title>
</head>
<body>
<%
	session.removeAttribute("loginCheck");
//	session.invalidate();
	response.sendRedirect("01LoginForm.jsp");
%>
</body>
</html>	