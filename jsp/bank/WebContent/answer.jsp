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

<%=id%>님, 답변을 작성 해 주세요.
<jsp:include page="question.jsp"/>

<form method="post" action="answer_update.jsp">
<br>
답변 입력:
seq:<input type="text" name="seq_num">
<textarea name="answer" rows="4" cols="40"></textarea>
<input type="submit" value="답변등록">
</form>

<%
}
catch(Exception e)
{
 out.print("죄송합니다, 문제가 발생했어용  01054510814<p>" + e.getMessage() + "<p>");
}

%>