<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>

<% request.setCharacterEncoding("EUC-KR");
String id = (String)session.getAttribute("id");
String pw = request.getParameter("pw");
 
String url = "jdbc:oracle:thin:@localhost:1521:XE";
String uid = "scott";  String pass = "tiger";
String sql =  "select * from bankmember where id = '"+id +"'";

try{
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection conn = DriverManager.getConnection(url, uid, pass);
 Statement cre = conn.createStatement(); 
 ResultSet rs = cre.executeQuery(sql); 
 rs.next(); 
out.print(pw+"<br>");

  if(pw.equals(rs.getString("pw")))
  {
   response.sendRedirect("myinfo.jsp");
  }
 
  else
  {
%>
<script>
alert("<%=id%>님, 비밀번호를 틀리게 입력하셨어요.");
"check_pw.jsp";
</script>

<%}
} catch(Exception e)
{
 out.print("문제 발생! 고객센터로 연락주세요~<p>" + e.getMessage());
}
%>