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
String balance=(String)session.getAttribute("balance");
String outputnum=(String)session.getAttribute("outputnum");
String inputnum=(String)session.getAttribute("inputnum");
%>
<body>
<h4><font color="blue"><%=id %></font>님의 거래 현황</h4>
<hr>
<ul>
<li>현재 잔액: <%=balance %>원</li>
<li>총 입금 수: <%=inputnum %></li>
<li>총 출금 수: <%=outputnum %></li>
</ul>
<br>
<a href="menu.jsp">뒤로가기</a>
</body>
</html>