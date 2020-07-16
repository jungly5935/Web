<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration" %>
<body style = "background-color:yellow">
<%
request.setCharacterEncoding("UTF-8");
String id = (String) session.getAttribute("id");
String []myoung = (String[])session.getAttribute("myoung");
String []clothes = (String[])session.getAttribute("clothes");
%>
<h1><%=id %>님의 장바구니 목록입니다</h1>
<%=myoung %>
<%=clothes %>
<form method="post" action="result.jsp">
<table border="1">
<tr>
 <td><input type="radio" name="C"/> </td>
 <td> <%=myoung %> </td>
</tr>
<tr>
 <td><input type="radio" name="C"/> </td>
 <td> <%=clothes %> </td>
</tr>
</table>

<input type="submit" value="결제">
</form>

<ul>
 <li><a href = "menu.jsp">메뉴</a>
 <li><a href = "logout.jsp">로그아웃</a>
 
</ul>
</body>