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
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	if (id.equals("dong")&pw.equals("123")) {
		session.setAttribute("loginCheck", "ok");
		session.setAttribute("loginName", id);
	}
	
	response.sendRedirect("01LoginForm.jsp");
%>
</body>
</html>	