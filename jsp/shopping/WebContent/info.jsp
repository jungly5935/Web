<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<body>

<%
String id = (String) session.getAttribute("id");
String total = (String) session.getAttribute("total");
String in_num = (String) session.getAttribute("in_num");
String out_num = (String) session.getAttribute("out_num");

%>

총 금액은 <%=total %> 입니다~<p>
입금 횟수는 <%=in_num %> 이다!<p>
출금 횟수는 <%=out_num %> 이라고<p>

</body>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration" %>
<body style = "background-color:yellow">
<%
Enumeration paramEnum = request.getParameterNames();
while(paramEnum.hasMoreElements())
{
 String myoung = (String)paramEnum.nextElement();
}

%>