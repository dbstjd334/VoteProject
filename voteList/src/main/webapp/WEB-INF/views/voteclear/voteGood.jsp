<%@page import="Pack01.VoteResult"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1> ��ǥ�� �Ϸ��ϼ̽��ϴ�.</h1>
	
	
	<%
	VoteResult voteResult = (VoteResult)request.getAttribute("voteResult");
	%>
	
	<div>���� ��ǥ �ο� : <%=voteResult.getRecentPerson() %> /  <%=voteResult.getSumPerson() %></div>
	<div>��ǥ ��Ȳ�� ���� �������� [��ǥ ��Ȳ Ȯ��] �� ���� Ȯ�� �����մϴ�.</div>
	<a href="#" onClick="history.back()">���� ������</a><br/>

	
	<%
	if(voteResult.getRecentPerson().equals(voteResult.getSumPerson())){%>
				<span>ȣ���� : <%=voteResult.getTiger() %></span>
				<span>�ڳ��� : <%=voteResult.getElep() %></span>
				<span>������ : <%=voteResult.getEager()%></span>
    <%}%>
    
    <a href="/voteList/index.jsp">�α��� �������� �̵��ϱ�</a>
	
	
</body>
</html>