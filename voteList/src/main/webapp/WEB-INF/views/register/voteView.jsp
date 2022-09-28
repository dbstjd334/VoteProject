<%@page import="Pack01.VoteResult"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<h1>동물의 왕 뽑기</h1>
	 
	
	<%
	String id = request.getParameter("id");
	%>

		<form action="voteResult" method="post">

			<input type="radio" name="selectNum" value="1" required>호랑이<br/>	
			<input type="radio" name="selectNum" value="2" required>코끼리<br/>	
			<input type="radio" name="selectNum" value="3" required>독수리<br/>	
			<input type="hidden" name="id" value=<%=id%>><br/>	
		<input type="submit" value="투표하기">

	</form>


	<br/>
	<form action="voteCount" method="post">
		<input type="submit"  value="투표 현황 확인" >
	</form>

	
	

</body>
</html>