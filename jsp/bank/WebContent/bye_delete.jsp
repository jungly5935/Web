<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.sql.*" %>
<%request.setCharacterEncoding("EUC-KR");
String id = (String)session.getAttribute("id");

String url = "jdbc:oracle:thin:@localhost:1521:XE";
String uid = "scott";  String pass = "tiger";
String sql =  "select * from bankmember";
String sql2 = "insert into bankmember_tal values(?,?,?,?,?,?)";
String sql3 = "delete bankmember where id = ?";
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn = DriverManager.getConnection(url, uid, pass);
PreparedStatement pre = conn.prepareStatement(sql); 
ResultSet rs = pre.executeQuery();
rs.next();

pre = conn.prepareStatement(sql2);
pre.setString(1,id);
pre.setString(2,rs.getString("pw"));
pre.setString(3,rs.getString("name"));
pre.setInt(4,rs.getInt("age"));
pre.setString(5,rs.getString("phone"));
pre.setInt(6,rs.getInt("balance"));
pre.executeUpdate();


pre = conn.prepareStatement(sql3);
pre.setString(1,id);
pre.executeUpdate();
session.invalidate();

%>
 <script>
  alert("Żȸó�� �Ǿ����ϴ�. ������ �˱� �ٶ��ϴ�.(ùȭ������ �̵��մϴ�)");
  "login.jsp";
  </script>
 
   <%}
catch (Exception e) {
  out.print("�ŷ����� ��ȸ �� ���� �߻�. �����ͷ� �����ٶ��ϴ�. <p>" + e.getMessage()); }%>