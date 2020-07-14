<%--login.jsp --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String id=(String)session.getAttribute("id");
String question = request.getParameter("question");
String url="jdbc:oracle:thin:@localhost:1521:orcl";
String uid="system";
String pass="1234";
String sql = "select max(seq) from qanda";
String sql2 = "insert into qanda values(?,sysdate,?,?,'-')";
try{
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection conn=DriverManager.getConnection(url, uid, pass);
 PreparedStatement pre = conn.prepareStatement(sql);
 ResultSet rs = pre.executeQuery();
 rs.next();
 int seq = rs.getInt(1) + 1;
 
 pre = conn.prepareStatement(sql2);
 pre.setInt(1,seq); pre.setString(2,id); pre.setString(3,question);
 pre.executeUpdate();
 response.sendRedirect("question.jsp");
 %>
<%} catch (Exception e){
 out.print("죄송합니다, 오류가 발생했어요 "+e.getMessage());
}
%>
</body>
</html>