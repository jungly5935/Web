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
<div align="center">
<%
request.setCharacterEncoding("UTF-8");
String id=(String)session.getAttribute("id");
String seq = request.getParameter("seq");
String answer = request.getParameter("answer");
String url="jdbc:oracle:thin:@localhost:1521:orcl";
String uid="system";
String pass="1234";
String sql = "select* from qanda where seq=?";
String sql2 = "update qanda set answer=? where seq=?";
try{
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection conn=DriverManager.getConnection(url, uid, pass);
 PreparedStatement pre = conn.prepareStatement(sql);
 pre.setString(1,seq);
 ResultSet rs = pre.executeQuery();
 if(rs.next()){
	 pre = conn.prepareStatement(sql2);
	 pre.setString(1,answer); pre.setString(2,seq);
	 pre.executeUpdate();
	 response.sendRedirect("question.jsp");
	 
 }%>
 </div>
 <script>
 alert("question 번호를 확인해봐요! ㅠㅠ");
 location.href="question.jsp";
 </script>
 
 
<%} catch (Exception e){
 out.print("죄송합니다, 오류가 발생했어요 "+e.getMessage());
}
%>
</body>
</html>