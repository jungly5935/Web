<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
request.setCharacterEncoding("UTF-8");
String id=(String)session.getAttribute("id");
%>
<body>
<h2>MENU</h2>
<hr>
<font color="blue"><%=id %></font>님, 어서오세요!<br>
<hr><p>
<ul>
<li><a href="input.jsp">입금</a></li>
<li><a href="output.jsp">출금</a></li>
<li><a href="mycount.jsp">나의 거래 현황</a></li>
<li><a href="logout.jsp">로그아웃</a></li>
</ul>
</body>
</html>