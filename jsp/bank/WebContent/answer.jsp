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
rs.next();
%>

<%=id%>��, �亯�� �ۼ� �� �ּ���.
<jsp:include page="question.jsp"/>

<form method="post" action="answer_update.jsp">
<br>
�亯 �Է�:
seq:<input type="text" name="seq_num">
<textarea name="answer" rows="4" cols="40"></textarea>
<input type="submit" value="�亯���">
</form>

<%
}
catch(Exception e)
{
 out.print("�˼��մϴ�, ������ �߻��߾��  01054510814<p>" + e.getMessage() + "<p>");
}

%>