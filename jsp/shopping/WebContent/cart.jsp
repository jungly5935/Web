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
<h1><%=id %>���� ��ٱ��� ����Դϴ�</h1>
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

<input type="submit" value="����">
</form>

<ul>
 <li><a href = "menu.jsp">�޴�</a>
 <li><a href = "logout.jsp">�α׾ƿ�</a>
 
</ul>
</body>