<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
 <%
 request.setCharacterEncoding("EUC-KR"); String id=(String)session.getAttribute("id");
 String url = "jdbc:oracle:thin:@localhost:1521:XE";
 String uid="scott"; String pass = "tiger";
 String sql="select balance from bankmember where id=?";
 try{
  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection conn = DriverManager.getConnection(url,uid,pass);
PreparedStatement pre = conn.prepareStatement(sql);
pre.setString(1,id);
ResultSet rs = pre.executeQuery();
 rs.next();
if(rs.getInt("balance") !=0)
{
 %>
 <%=id %> ���� �ܾ��� ���� <%=rs.getInt("balance") %> �� �����ֽ��ϴ�.
 <%
}

 %>

   <h1>���� Żȸ�� ���Ͻʴϰ�?</h1>
  
   <a href="menu.jsp">���(�޴��� ���ư���)</a>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <a href="bye_delete.jsp">Żȸ ó�� ��� ���� ��û</a>
  

 
 <% }catch(Exception e)
 {
  out.print("���� �߻�... 01054510814�� �����ּ���  <p>" + e.getMessage());
 }
 %>