<%--event.jsp 타입에따라 다른 페이지로 넘어감--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

<script type="text/javascript" src="<c:url value='/js/jquery-migrate-1.4.1.min'/>"></script>

</head>

<%
request.setCharacterEncoding("UTF-8");
String id = (String)session.getAttribute("id");
String url="jdbc:oracle:thin:@localhost:1521:orcl";
String uid="system";
String pass="1234";
String sql = "select * from member where id= ? "; //type 가져오려고 select
try{
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection conn=DriverManager.getConnection(url, uid, pass);
PreparedStatement pre = conn.prepareStatement(sql);
pre.setString(1,id);
ResultSet rs = pre.executeQuery();

if(rs.next()){
if(rs.getString("sex").equals("boy")){
if(rs.getString("type").equals("cute"))
{
	response.sendRedirect("cute.jsp");
}
if(rs.getString("type").equals( "sexy"))
{
	response.sendRedirect("sexy.jsp");
}
if(rs.getString("type").equals( "charm"))
{
	response.sendRedirect("charm.jsp");
}
if(rs.getString("type").equals("tough"))
{
	response.sendRedirect("tough.jsp");
}
}
if(rs.getString("sex").equals("girl")){
if(rs.getString("type").equals("cute"))
{
	response.sendRedirect("cute_boy.jsp");
}
if(rs.getString("type").equals( "sexy"))
{
	response.sendRedirect("sexy_boy.jsp");
}
if(rs.getString("type").equals( "charm"))
{
	response.sendRedirect("charm_boy.jsp");
}
if(rs.getString("type").equals("tough"))
{
	response.sendRedirect("tough_boy.jsp");
}
}

}//while

}catch (Exception e){
 out.print("죄송합니다, 오류가 발생했어요 "+e.getMessage());
}
%>

<body>
</body>

</html>
