<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<meta charset="EUC-KR">
<%
request.setCharacterEncoding("UTF-8");
String id = (String) session.getAttribute("id");
String result = (String) session.getAttribute("C");
%>
<body>

<%=id %>��, ������ �Ϸ�Ǿ����ϴ� :)

</body>
</html>   
</body>