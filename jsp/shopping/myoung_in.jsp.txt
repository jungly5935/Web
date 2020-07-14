<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 
 <body>
 <%
request.setCharacterEncoding("UTF-8");
String id = (String) session.getAttribute("id");
String []myoung =(String[])request.getParameterValues("myoung");

session.setAttribute("myoung",myoung+"");
response.sendRedirect("cart.jsp");


%>  
   
   
</body>

 