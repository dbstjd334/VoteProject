<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*, java.text.*"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

<title>메인 페이지</title>

</head>

<body>
	<form method=post action="LoginCheck" id = "searchform">
		아이디:<input type="text" name="id"  required pattern="[0-9]+"><br/>
		비밀번호:<input type="password" name="pw" required pattern="[0-9]+"><br/>
		<input type="submit" value="로그인"><br/>
	</form>
	
	<%
	String str = request.getParameter("alertstr");
	
	if(str != null){
		out.println(str);
	}
	
	%>
	

</body>

</html>