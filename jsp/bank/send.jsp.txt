<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>자동이체</h2>
<form method="post" action="send_check.jsp">
수신인 ID: <input type="text" name="trade_id"/><br>
이체금액: <input type="text" name="m"/><p>
<input type="submit" value="이체실행"/>
</form>
</body>
</html>