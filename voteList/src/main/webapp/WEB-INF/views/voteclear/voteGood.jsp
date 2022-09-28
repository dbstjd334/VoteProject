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
	
	<div>현재 투표 인원 : <%=voteResult.getRecentPerson() %> /  <%=voteResult.getSumPerson() %></div>
	<div>투표 현황은 이전 페이지의 [투표 현황 확인] 을 통해 확인 가능합니다.</div>
	<a href="#" onClick="history.back()">이전 페이지</a><br/>

	
	<%
	if(voteResult.getRecentPerson().equals(voteResult.getSumPerson())){%>
				<span>호랑이 : <%=voteResult.getTiger() %></span>
				<span>코끼리 : <%=voteResult.getElep() %></span>
				<span>독수리 : <%=voteResult.getEager()%></span>
    <%}%>
    
    <a href="/voteList/index.jsp">로그인 페이지로 이동하기</a>
	
	
</body>
</html>