<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<body>
<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String[] members = {"sk","ej","sb","sj"};

for(String m : members)
{
 if(id.equals(m))
 {
  session.setAttribute("id",id);
  session.setAttribute("cnt","0");
  response.sendRedirect("menu.jsp");
 
 }
}
%>

<script>
 alert("멍청아! ID가 틀렸자나!");
"login.html";
</script>
</body>