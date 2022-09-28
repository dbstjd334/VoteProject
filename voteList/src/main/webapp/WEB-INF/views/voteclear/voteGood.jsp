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
	<h1> 투표를 완료하셨습니다.</h1>
	
	
	<%
	VoteResult voteResult = (VoteResult)request.getAttribute("voteResult");
	%>
	
	<div>현재 투표 결과 - 모두 투표를 하셔야 투표 결과를 볼 수 있습니다 .</div>
	<div>현재 투표 인원 : <%=voteResult.getVoteResult() %> / 16</div>
	
	<%
	if(voteResult.getVoteResult()== 16){%>
				<span>호랑이 : <%=voteResult.getTiger() %></span>
				<span>코끼리 : <%=voteResult.getElep() %></span>
				<span>독수리 : <%=voteResult.getEager()%></span>
    <% }%>
	
	
</body>
</html>