<%--member.jsp --%>
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
String id= request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String sex= request.getParameter("sex");
int age=Integer.parseInt(request.getParameter("age"));
String type=request.getParameter("type");


String url="jdbc:oracle:thin:@localhost:1521:orcl";
String uid="system";
String pass="1234";
String sql = "insert into member values(?,?,?,?,?,?,0)";

try{
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection conn=DriverManager.getConnection(url, uid, pass);
PreparedStatement pre = conn.prepareStatement(sql);
pre.setString(1,id); pre.setString(2,pw);
pre.setString(3,name); pre.setInt(4,age);
pre.setString(5,sex); pre.setString(6,type);

pre.executeUpdate();

 %>
 <script>
  alert("<%=id%>님! 우리 이제 썸을 시작해요~");
location.href="login.html";
  </script>
 <%
 
} catch (NumberFormatException a){
	out.print("number오류" + a.getMessage());
}
catch (Exception e){
 out.print("죄송합니다, 오류가 발생했어요 "+e.getMessage());
}
%>
</body>
</html>