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
	
	<div>���� ��ǥ ��� - ��� ��ǥ�� �ϼž� ��ǥ ����� �� �� �ֽ��ϴ� .</div>
	<div>���� ��ǥ �ο� : <%=voteResult.getVoteResult() %> / 16</div>
	
	<%
	if(voteResult.getVoteResult()== 16){%>
				<span>ȣ���� : <%=voteResult.getTiger() %></span>
				<span>�ڳ��� : <%=voteResult.getElep() %></span>
				<span>������ : <%=voteResult.getEager()%></span>
    <% }%>
	
	
</body>
</html>