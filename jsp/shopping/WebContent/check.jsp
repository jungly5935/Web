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
 alert("��û��! ID�� Ʋ���ڳ�!");
"login.html";
</script>
</body>