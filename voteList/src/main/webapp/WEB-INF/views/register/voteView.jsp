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
	
	<h1>������ �� �̱�</h1>
	 
	
	<%
	String id = request.getParameter("id");
	%>

		<form action="voteResult" method="post">

			<input type="radio" name="selectNum" value="1" required>ȣ����<br/>	
			<input type="radio" name="selectNum" value="2" required>�ڳ���<br/>	
			<input type="radio" name="selectNum" value="3" required>������<br/>	
			<input type="hidden" name="id" value=<%=id%>><br/>	
		<input type="submit" value="��ǥ�ϱ�">

	</form>


	<br/>
	<form action="voteCount" method="post">
		<input type="submit"  value="��ǥ ��Ȳ Ȯ��" >
	</form>

	
	

</body>
</html>