<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
★☆★☆★☆★☆★☆이상형을 선택해 주세요★☆★☆★☆★☆★☆<p>
<%
String hamster = request.getParameter("hamster");
String cat = request.getParameter("cat");
%>

<form method="post" action="w4.jsp">
<input type="hidden" name="win" value="<%=hamster%>">
<input type="hidden" name="win" value="<%=cat%>">
<table>
<tr><th>
<img src="<%=hamster %>.jpg" width=200 height=200 ><br></th><th>
<img src="<%=cat %>.jpg" width=200 height=200><br>
</th></tr>
<tr><th>
<input type="radio" name="hamster" value="<%=hamster%>"><%=hamster %></th><th>
<input type="radio" name="cat" value="<%=cat%>"><%=cat %></th></tr>
</table>
<input type="submit" value="다음">
</form>