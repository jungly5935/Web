<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String id1 = (String)session.getAttribute("id");
String trade_id = (String)session.getAttribute("trade_id");
int won = (Integer)session.getAttribute("won");
String url = "jdbc:oracle:thin:@localhost:1521:XE";
String uid = "scott";  String pass = "tiger";

String sql1 =  "insert into banktrade values(?, sysdate, ?, 0, 1, ?)";
String sql2 =  "insert into banktrade values(?, sysdate, 0, ?, 2, ?)";

String sql3 = "update bankmember set balance=balance-? where id=?";
String sql4 = "update bankmember set balance=balance+? where id=?";

try{
   Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection conn = DriverManager.getConnection(url, uid, pass);
  
   PreparedStatement pre1 = conn.prepareStatement(sql1);
   pre1.setString(1,id1);
   pre1.setInt(2,won);
   pre1.setString(3,trade_id);
   pre1.executeUpdate();
  
   PreparedStatement pre2 = conn.prepareStatement(sql2);
   pre2.setString(1,trade_id);
   pre2.setInt(2,won);
   pre2.setString(3,id1);
   pre2.executeUpdate();
  
   PreparedStatement pre3 = conn.prepareStatement(sql3);
   pre3.setInt(1,won);
   pre3.setString(2,id1);
   pre3.executeUpdate();
  
   PreparedStatement pre4 = conn.prepareStatement(sql4);
   pre4.setInt(1,won);
   pre4.setString(2,trade_id);
   pre4.executeUpdate();
   %>
   <script>
   alert("<%=won%>원 이체 완료 되었습니다. (메뉴로 이동합니다.)");
   "menu.jsp";
   </script>
<%} catch (Exception e){
   out.print("죄송합니다, 문제가 생겼어요ㅠ  <p>" + e.getMessage());
}
%>
</body>
</html>