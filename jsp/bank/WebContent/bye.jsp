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
 <%=id %> 님의 잔액이 아직 <%=rs.getInt("balance") %> 원 남아있습니다.
 <%
}

 %>

   <h1>정말 탈회를 원하십니가?</h1>
  
   <a href="menu.jsp">취소(메뉴로 돌아가기)</a>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <a href="bye_delete.jsp">탈회 처리 즉시 진행 요청</a>
  

 
 <% }catch(Exception e)
 {
  out.print("문제 발생... 01054510814로 연락주세요  <p>" + e.getMessage());
 }
 %>