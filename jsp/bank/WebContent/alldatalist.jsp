<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.sql.*" %>
<% request.setCharacterEncoding("EUC-KR");
String id = (String)session.getAttribute("id");
String url = "jdbc:oracle:thin:@localhost:1521:XE";
String uid = "scott";  String pass = "tiger";
String sql =  "select * from bankmember order by id";
String sql2 =  "select * from banktrade order by id, tradedate";
String sql3 = "select* from bankmember_tal order by id";
try{
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection conn = DriverManager.getConnection(url, uid, pass);
 Statement cre = conn.createStatement();
 ResultSet rs = cre.executeQuery(sql);
 %>
 <body style="background-color:#E0F8E0">
 <div align="center">
 <h2 style="color:silver"> [������ ���� ȭ��]</h2>
 <h3> ��ü ȸ�� ����Ʈ (id ��)</h3>
 <table width="500" border="1">
 <tr>
 <th>ID</th><th>PW</th><th>�̸�</th><th>����</th><th>����ó</th><th>�����ܾ�</th>
 </tr>
  <%while(rs.next()) {%>
  <tr>
  <td><%=rs.getString("id")%></td>
  <td><%=rs.getString("pw")%></td>
  <td><%=rs.getString("name")%></td>
  <td><%=rs.getInt("age")%></td>
  <td><%=rs.getString("phone")%></td>
  <td style="color:blue; text-align:right">
  <%=rs.getInt("balance")%></td>
  </tr>
  <%}%>
  </table>
  <br>
  <br>
<% rs = cre.executeQuery(sql2); %>
<h3> ���� �ŷ���Ȳ(id,���� ��)</h3>
<table width="600" border="1">
<tr>
<th>ID</th><th>�ŷ�����</th><th>�Աݾ�</th><th>��ݾ�</th><th>��ü����</th><th>��ü���</th></tr>
<%while(rs.next()) {%>
<tr>
<td><%=rs.getString("id")%></td>
<td><%=rs.getString("tradedate")%></td>
<td style="color:blue; text-align:right"><%=rs.getString("deposit")%></td>
<td style="color:red; text-align:right"><%=rs.getString("withdraw")%></td>
<td><%=rs.getInt("trans")==1?"��ü����":rs.getInt("trans")==2?"��ü����":""%></td>
<td><%=rs.getString("trade_id")%></td>
</tr>
 <%}%>
 </table>
 <br>
<% rs = cre.executeQuery(sql3); %>

 <h3> Ż���� ȸ�� ����Ʈ (id ��)</h3>
 <table width="500" border="1">
 <tr>
 <th>ID</th><th>PW</th><th>�̸�</th><th>����</th><th>����ó</th><th>�����ܾ�</th>
 </tr>
  <%while(rs.next()) {%>
  <tr>
  <td><%=rs.getString("id")%></td>
  <td><%=rs.getString("pw")%></td>
  <td><%=rs.getString("name")%></td>
  <td><%=rs.getInt("age")%></td>
  <td><%=rs.getString("phone")%></td>
  <td style="color:blue; text-align:right">
  <%=rs.getInt("balance")%></td>
  </tr>
  <%}%>
  </table>
  <br>
 <p> <a href="menu.jsp">�޴��� ���ư���</a>
 </div>
 
  <%} catch (Exception e) {
   out.print("�ŷ����� ��ȸ �� ���� �߻�. �����ͷ� �����ٶ��ϴ�. <p>" + e.getMessage());
}%>