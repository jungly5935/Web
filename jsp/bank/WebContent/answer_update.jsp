<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.sql.*" %>

<% request.setCharacterEncoding("EUC-KR");
String id = (String)session.getAttribute("id");
int seq_num =Integer.parseInt( request.getParameter("seq_num"));

String answer  = request.getParameter("answer");
String url = "jdbc:oracle:thin:@localhost:1521:XE";
String uid = "scott";  String pass = "tiger";
String sql = "select*  from qanda";
String sql2 = "update qanda set answer=? where seq=?";
%>
<% if(id.equals("admin"))
   {%><jsp:include page="question.jsp"/>
<%   }
%>
<br>
<a href="menu.jsp">�޴��� ���ư���</a>
 <%
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn = DriverManager.getConnection(url, uid, pass);
PreparedStatement pre = conn.prepareStatement(sql);
ResultSet rs = pre.executeQuery();

pre = conn.prepareStatement(sql2);

while(rs.next()){
if(rs.getInt("seq") == seq_num) // seq_num�� �ִ� ���̸�
{
 pre.setString(1,answer);
 pre.setInt(2,seq_num);
 pre.executeUpdate();
 response.sendRedirect("question.jsp");

}
}
%>
<script>
alert("seq�� �� �� �����̾��");
</script>
<%
} catch (Exception e) {
   out.print("���� �߻�! ���� �߻�! ��޹���: 010-5451-0814 <p>" + e.getMessage());
   }
%>