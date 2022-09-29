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

<div>현재 투표 인원 : <%=voteResult.getRecentPerson() %> /  <%=voteResult.getSumPerson() %></div>
	<%
	if(voteResult.getRecentPerson().equals(voteResult.getSumPerson())){%>
<br/><div>모든 인원이 투표를 완료하였습니다.</div>
<div>투표 결과</div>
   <%}%>
				<br/><span>호랑이 : <%=voteResult.getTiger() %></span>
				<span>코끼리 : <%=voteResult.getElep() %></span>
				<span>독수리 : <%=voteResult.getEager()%></span><br/>
				
				<br/><a href="/voteList/index.jsp">로그인 페이지로 이동하기</a>

	

</body>
</html>