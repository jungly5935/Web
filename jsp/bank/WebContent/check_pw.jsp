<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
request.setCharacterEncoding("EUC-KR");
String id = (String)session.getAttribute("id");

%>

  <%=id %>님, 비밀번호를 한 번 더 입력 해주세요!<br>
 
<form method= "post" action="check_pw_select.jsp">
<input type="text" name="pw">

<input type="submit" value="확인">
</form>
<p>
<a href="menu.jsp"> 메뉴로 돌아가기</a>