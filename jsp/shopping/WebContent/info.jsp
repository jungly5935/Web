<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<body>

<%
String id = (String) session.getAttribute("id");
String total = (String) session.getAttribute("total");
String in_num = (String) session.getAttribute("in_num");
String out_num = (String) session.getAttribute("out_num");

%>

�� �ݾ��� <%=total %> �Դϴ�~<p>
�Ա� Ƚ���� <%=in_num %> �̴�!<p>
��� Ƚ���� <%=out_num %> �̶��<p>

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