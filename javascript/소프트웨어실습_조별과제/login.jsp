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
String id=request.getParameter("id");
String pw = request.getParameter("pw");
String url="jdbc:oracle:thin:@localhost:1521:orcl";
String uid="system";
String pass="1234";
String sql = "select* from member where id = ?";

try{
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection conn=DriverManager.getConnection(url, uid, pass);
PreparedStatement pre = conn.prepareStatement(sql);
pre.setString(1,id);
ResultSet rs = pre.executeQuery();
rs.next();

if(pw.equals(rs.getString("pass")))
{
session.setAttribute("id",id);
response.sendRedirect("menu.html");
}

 %>
 <script>
  alert("아직도 가입 안하고 뭐하셨어요!!!");
location.href="login.html";
  </script>
 <%

}
catch (Exception e){
 out.print("죄송합니다, 오류가 발생했어요 "+e.getMessage());
}
%>
</body>
</html>