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
String balance=(String)session.getAttribute("balance");
String outputnum=(String)session.getAttribute("outputnum");
String price=request.getParameter("price");
%>
<body>
<%
int b=Integer.parseInt(balance);
int num=Integer.parseInt(price);
if(b<num){%>
 <script>
 alert("잔액이 부족합니다");
 "menu.jsp";
 </script>
<%}
else{
 b=b-num;
 balance=""+b;
 outputnum=""+(Integer.parseInt(outputnum)+1);
 %>
 <script>
 alert("출금이 완료되었습니다");
 "menu.jsp";
 </script>
<% }
session.setAttribute("balance",balance);
session.setAttribute("outputnum",outputnum);
%>
</body>
</html>