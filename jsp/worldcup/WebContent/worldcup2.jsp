<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
�ڡ١ڡ١ڡ١ڡ١ڡ��̻����� ������ �ּ���ڡ١ڡ١ڡ١ڡ١ڡ�<p>
<%
String hamster = request.getParameter("hamster");
%>
<form method="post" action="w3.jsp">
<input type="hidden" name="hamster" value="<%=hamster%>">
<table>
<tr><th>
<img src="cat.jpg" width=200 height=200 ><br></th><th>
<img src="cat2.jpg" width=200 height=200><br>
</th></tr>
<tr><th>
<input type="radio" name="cat" value="cat">cat</th><th>
<input type="radio" name="cat" value="cat2">cat2</th></tr>
</table>
<input type="submit" value="����">
</form>

 