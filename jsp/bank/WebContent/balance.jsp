<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ page import ="java.sql.*" %>
 <%request.setCharacterEncoding("UTF-8");
 String id = (String)session.getAttribute("id");
 //String balance = (String)session.getAttribute("balance");
 
 String url = "jdbc:oracle:thin:@localhost:1521:XE";
 String uid = "scott";  String pass = "tiger";
 String sql =  "select balance from bankmember where id = '" + id + "'";
 String sql2 = "select max(tradedate) from banktrade where id= '" + id+"'";
 try{
  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection conn = DriverManager.getConnection(url, uid, pass);
  Statement cre = conn.createStatement(); // 3c
  ResultSet rs = cre.executeQuery(sql); // 3c�ϱ� 4���� sql
  rs.next(); %>
   <%=id %>���� �ܾ��� <%=rs.getInt("balance") %>�� �Դϴ�.<p>
  <%rs = cre.executeQuery(sql2);
  rs.next();
 
  %>
 
 
  �ֱ� �ŷ����� <%= rs.getString(1) %> �Դϴ�. <p>
  <a href="menu.jsp"> �޴��� ���ư���</a>
 
 
 <%} catch (Exception e) {
      out.print("���� �߻��� �����ͷ� �����ּ���~ <p>" + e.getMessage());
  }%>
 
 }

