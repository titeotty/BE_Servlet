<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>main</title>	
	<style>
		header { height: 100px;
		         background-color: yellow;} 
		section { height: 300px;
		         background-color: green;} 
		footer { height: 100px;
		         background-color: orange;} 
	</style>
</head>
<body>
<%@ include file = "module/03top.jsp" %>
<section>
  <h2> 메인 페이지입니다. </h2>
</section>
<jsp:include page="module/03footer.jsp"/>
</body>
</html>
