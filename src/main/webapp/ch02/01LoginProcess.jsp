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
	String i = request.getParameter("id");
	String p = request.getParameter("pw");
	// == 연산자로 if문을 작성할 시 객체의 메모리 주소를 비교하기 때문에 equals 사용
	if (i.equals("dong") & p.equals("123")) {
		//성공
		//out.println("<h1>로그인 성공</h1>");
		response.sendRedirect("02loginSuc.jsp");
	} else {
		//실패
		//out.println("<h1>로그인 실패</h1>");
%>
		<jsp:forward page="02loginFail.jsp"></jsp:forward>
<%
	} %>
</body>
</html>	