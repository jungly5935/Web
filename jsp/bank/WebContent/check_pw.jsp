<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
request.setCharacterEncoding("EUC-KR");
String id = (String)session.getAttribute("id");

%>

  <%=id %>��, ��й�ȣ�� �� �� �� �Է� ���ּ���!<br>
 
<form method= "post" action="check_pw_select.jsp">
<input type="text" name="pw">

<input type="submit" value="Ȯ��">
</form>
<p>
<a href="menu.jsp"> �޴��� ���ư���</a>