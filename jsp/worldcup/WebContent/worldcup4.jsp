<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
String win = request.getParameter("win");
%>
<h1>���� ����ڴ� <%=win %></h1>
<img src = "<%=win%>.jpg" width=400 height=400 ><br><%=win%>