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
  ResultSet rs = cre.executeQuery(sql); // 3c니까 4번에 sql
  rs.next(); %>
   <%=id %>님의 잔액은 <%=rs.getInt("balance") %>원 입니다.<p>
  <%rs = cre.executeQuery(sql2);
  rs.next();
 
  %>
 
 
  최근 거래일은 <%= rs.getString(1) %> 입니다. <p>
  <a href="menu.jsp"> 메뉴로 돌아가기</a>
 
 
 <%} catch (Exception e) {
      out.print("문제 발생ㅠ 고객센터로 연락주세요~ <p>" + e.getMessage());
  }%>
 
 }

