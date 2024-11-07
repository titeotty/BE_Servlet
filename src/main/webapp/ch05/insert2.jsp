<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<%
request.setCharacterEncoding("UTF-8");
String memberId = request.getParameter("memberId");
String password = request.getParameter("password");
String name = request.getParameter("name");
String email = request.getParameter("email");

//1. 드라이버 로딩
Class.forName("com.mysql.cj.jdbc.Driver"); //어떤 dbms와 버전을 사용할지를 정의

//2. DB서버 접속
String jdbcUrl = "jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC&useSSL=false&useUnicode=true&characterEncoding=utf-8";
Connection con = DriverManager.getConnection(jdbcUrl, "root", "root");
System.out.println("여기까지");

//3. Query문을 이용해 데이터 조작
PreparedStatement pstmt = con.prepareStatement("insert into membertbl values (?, ?, ?, ?); ");
pstmt.setString(1, memberId);
pstmt.setString(2, password);
pstmt.setString(3, name);
pstmt.setString(4, email);
pstmt.executeUpdate();


//4. close
con.close();
pstmt.close();
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
</html>