 

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<%
request.setCharacterEncoding("EUC-KR");
String id=(String)session.getAttribute("id");

String url="jdbc:oracle:thin:@localhost:1521:XE";
String uid = "scott"; String pass = "tiger";
String sql = "select* from qanda";


try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn = DriverManager.getConnection(url,uid,pass);
PreparedStatement pre = conn.prepareStatement(sql);
ResultSet rs = pre.executeQuery();

%>
<%
if(id.equals("admin"))
{
response.sendRedirect("answer.jsp");
}
else{ %>
<%=id%>��, �ñ��Ͻ� ���� ��������? ������ �ֽø� ���� �ص帳�ϴ�.
<% }%>

<table border="1">
<tr>
<th>seq</th> <th>��������</th> <th>ID</th> <th>Question</th> <th>Answer</th>
</tr>
<% while(rs.next()) {%>
<tr>
<td><%=rs.getString("seq") %></td> <td><%=rs.getString("qdate") %></td>
 <td><%=rs.getString("id") %></td> <td> <%=rs.getString("question") %></td>
 <td><%=rs.getString("answer") %>
</tr>
<% } %>
</table>
<p>

<form method="post" action="question_insert.jsp">
���� �Է�:<br>
<textarea name="question" rows="4" cols="40"></textarea>
<input type="submit" value="�������">
</form>

<a href="menu.jsp">�޴��� ���ư���</a>

<% }
catch(Exception e)
{
 out.print("�˼��մϴ�, ������ �߻��߾��  01054510814<p>" + e.getMessage() + "<p>");
}

%>