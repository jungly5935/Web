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
String trade_id = request.getParameter("trade_id");
int won = Integer.parseInt(request.getParameter("m"));
String url = "jdbc:oracle:thin:@localhost:1521:XE";
String uid = "scott";  String pass = "tiger";
String sql1 =  "select balance from bankmember where id = ?";
String sql2 = "select * from bankmember where id = ?";
int balance1;
try{
   Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection conn = DriverManager.getConnection(url, uid, pass);
   PreparedStatement pre2 = conn.prepareStatement(sql2);
   pre2.setString(1,trade_id);
   ResultSet rs = pre2.executeQuery();
   if(!rs.next()){%>
      <script>
      alert(trade_id+"은 존재하지 않는 아이디입니다.");
      response.sendRedirect("send_insert.jsp");
      </script>
   <%}
  
   PreparedStatement pre1 = conn.prepareStatement(sql1);
   pre1.setString(1,id1);
   rs = pre1.executeQuery();
   rs.next();
   balance1 = rs.getInt("balance");
   if(balance1 < won){%>
      <script>
      alert("잔액이 부족합니다.");
      "send.jsp";
      </script>
   <%}
   else{
      session.setAttribute("won", won);
      session.setAttribute("trade_id", trade_id);
      response.sendRedirect("send_insert.jsp");
   }
} catch (Exception e){
   out.print("문제가 발생했어요..  <p>" + e.getMessage());
}
%>
</body>
</html>