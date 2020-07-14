<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <body>
 <%
 request.setCharacterEncoding("UTF-8");
 String id = (String) session.getAttribute("id");
 String []clothes =(String[])request.getParameterValues("clothes");

 session.setAttribute("clothes",clothes+"");
 response.sendRedirect("cart.jsp");
%>  