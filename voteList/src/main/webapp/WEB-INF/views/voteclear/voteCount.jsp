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

	<%
	VoteResult voteResult = (VoteResult)request.getAttribute("voteResult");
	%>

<div>���� ��ǥ �ο� : <%=voteResult.getRecentPerson() %> /  <%=voteResult.getSumPerson() %></div>
	<%
	if(voteResult.getRecentPerson().equals(voteResult.getSumPerson())){%>
<br/><div>��� �ο��� ��ǥ�� �Ϸ��Ͽ����ϴ�.</div>
<div>��ǥ ���</div>
   <%}%>
				<br/><span>ȣ���� : <%=voteResult.getTiger() %></span>
				<span>�ڳ��� : <%=voteResult.getElep() %></span>
				<span>������ : <%=voteResult.getEager()%></span><br/>
				
				<br/><a href="/voteList/index.jsp">�α��� �������� �̵��ϱ�</a>

	

</body>
</html>