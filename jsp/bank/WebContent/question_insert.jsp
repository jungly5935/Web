<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.sql.*" %>
<% request.setCharacterEncoding("EUC-KR");
String id = (String)session.getAttribute("id");
String question = request.getParameter("question");
String answer = request.getParameter("answer");

String url = "jdbc:oracle:thin:@localhost:1521:XE";
String uid = "scott";  String pass = "tiger";
String sql = "select max(seq) from qanda ";
String sql2 = "insert into qanda values(?,sysdate,?,?,'(preparing)')";
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn = DriverManager.getConnection(url, uid, pass);
PreparedStatement pre = conn.prepareStatement(sql);
ResultSet rs = pre.executeQuery();
rs.next();
int seq = rs.getInt(1)+1;

pre = conn.prepareStatement(sql2);
pre.setInt(1,seq);  pre.setString(2,id);
pre.setString(3,question);
pre.executeUpdate();

response.sendRedirect("question.jsp");

} catch (Exception e) {
 out.print("문제 발생! 문제 발생! 긴급문의: 010-5451-0814 <p>" + e.getMessage());
 }
%>

 