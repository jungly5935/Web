<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   
<%
request.setCharacterEncoding("UTF-8");
String id =(String)session.getAttribute("id");
%>
   
<body style = "background-color:beige">
<h1> MENU </h1>
<hr>
<%=id %>��, ���õ� ��ſ� ���� �Ǽ���~ *^^*
<hr>
<ul>
 <li><a href = "myoung.jsp">1.��ǰ</a>
 <li><a href = "clothes.jsp">2.��</a>
 <li><a href = "cart.jsp">3.��ٱ���</a>
 <li><a href = "logout.jsp">4.�α׾ƿ�</a>
</ul>
</body>