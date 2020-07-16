<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String id=request.getParameter("id");
String pw=request.getParameter("pw");
String[] members={"a","b","c","d","james"};
String[] passwords={"12345","hello","so","school","names"};
for(int i=0;i<members.length;i++){
 if(id.equals(members[i])){
  if(pw.equals(passwords[i])){
   session.setAttribute("id",id);
   session.setAttribute("balance","0");
   session.setAttribute("inputnum","0");
   session.setAttribute("outputnum","0");
   session.setMaxInactiveInterval(60*60);
   response.sendRedirect("menu.jsp");
  }
  else{%>
   <script>
   alert("패스워드가 틀렸습니다!");
   "login.html";
   </script>
  <% }
 }
 else{%>
 <script>
 alert("미등록 아이디입니다!");
 "login.html";
 </script>
  <% }
}
%>
</body>
</html>