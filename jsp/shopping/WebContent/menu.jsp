<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   
<%
request.setCharacterEncoding("UTF-8");
String id =(String)session.getAttribute("id");
%>
   
<body style = "background-color:beige">
<h1> MENU </h1>
<hr>
<%=id %>님, 오늘도 즐거운 쇼핑 되세요~ *^^*
<hr>
<ul>
 <li><a href = "myoung.jsp">1.명품</a>
 <li><a href = "clothes.jsp">2.옷</a>
 <li><a href = "cart.jsp">3.장바구니</a>
 <li><a href = "logout.jsp">4.로그아웃</a>
</ul>
</body>