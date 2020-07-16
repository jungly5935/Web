<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>출금화면</h3>
<hr>
얼마를 출금하시겠습니까?
<form method="post" action="save_out.jsp">
출금액: <input type="text" name="price"/>원<p>
<input type="submit" value="확인"/>
<a href="menu.jsp">돌아가기</a>
</form>
</body>
</html>