<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String balance=(String)session.getAttribute("balance");
String inputnum=(String)session.getAttribute("inputnum");
String price=request.getParameter("price");
%>
<%
balance=""+(Integer.parseInt(balance)+Integer.parseInt(price));
inputnum=""+(Integer.parseInt(inputnum)+1);

session.setAttribute("balance",balance);
session.setAttribute("inputnum",inputnum);
%>
<script>
alert("입금 완료되었습니다");
"menu.jsp";
</script>
</body>
</html>