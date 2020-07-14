<%--question.jsp --%>
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

<style>

body{
font-family:맑은고딕;
}
#question{
height:35px;
color:white;
}
hr{
border: 1px dashed white;
}
#text1{
border: 2px dashed white;
width:70px;
background-color:pink;
}
#text2{
border: 3px dashed white;
width:400px;
background-color:pink;
}

a {
color:white;
text-decoration:none;
}
table {
	width:60%;
	border:50px;
	margin:30px;
	
}
table, table th, table td
{
	font-size:14px;;
	text-align:center;
	padding:4px;
	border:1px solid #dddddd;
	border-collapse:collapse
}
table th {
	background-color:hsla(0,100%,80%);
	color:white;
}
table tr:nth-child(odd){
	background-color:pink;
}
table tr:nth-child(even){
	background-color:white;
}


#button1{
  background:white;
  color:pink;
  border:none;
  position:relative;
  height:40px;
  font-size:1em;
  padding:0 2em;
  cursor:pointer;
  transition:800ms ease; /*800ms 동안 변화, ease는(0.25, 0.1, 0.25, 0.1)로, 처음과 끝은 상대적으로 느리게 중간은 빠르게*/ 
  outline:none;
  border-radius: 20px 20px 20px 20px;
}
#button1:hover{
  background:#FA5882;
  color:white;
  border-radius: 20px 20px 20px 20px;
  
}
</style>

<body>
<div align="center" id="question">
<h3>QUESTION BOARD</h3>
</div>
<hr>

<%
request.setCharacterEncoding("UTF-8");
String id=(String)session.getAttribute("id");
String url="jdbc:oracle:thin:@localhost:1521:orcl";
String uid="system";
String pass="1234";
String sql = "select* from qanda";

try{
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection conn=DriverManager.getConnection(url, uid, pass);
 Statement cre = conn.createStatement();
 ResultSet rs = cre.executeQuery(sql); %>
 <body style = "background-color:pink">
 <div align="center">
 
 
 <table border="1">
 <tr><th>Num</th><th>Date</th><th>ID</th><th>Question</th><th>Answer</th></tr> 
 <%while(rs.next()) {%>
 <tr><th><%=rs.getString(1)%></th><td><%=rs.getString(2)%></td><td>
 <%=rs.getString(3)%></td> <td><%=rs.getString(4)%></td><td>
 <%=rs.getString(5)%></td></tr>
 <% }%>
 </table><p>
 <form method="post" action="question_insert.jsp">
<textarea id = text2 name="question" rows=4 cols=50></textarea>
 <p><input type="submit" id="button1" value="질문등록" >
 </form>
 
 <a href="menu.html">메뉴로 돌아가기</a>
 <p>
 
<% if(id.equals("admin")){ %>
 <jsp:include page="answer.jsp" /> <%} %>
<br>

</div>
</body>

<%} catch (Exception e){
 out.print("죄송합니다, 오류가 발생했어요 "+e.getMessage());
}
%>
</body>
</html>