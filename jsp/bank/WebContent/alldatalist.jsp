<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.sql.*" %>
<% request.setCharacterEncoding("EUC-KR");
String id = (String)session.getAttribute("id");
String url = "jdbc:oracle:thin:@localhost:1521:XE";
String uid = "scott";  String pass = "tiger";
String sql =  "select * from bankmember order by id";
String sql2 =  "select * from banktrade order by id, tradedate";
String sql3 = "select* from bankmember_tal order by id";
try{
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection conn = DriverManager.getConnection(url, uid, pass);
 Statement cre = conn.createStatement();
 ResultSet rs = cre.executeQuery(sql);
 %>
 <body style="background-color:#E0F8E0">
 <div align="center">
 <h2 style="color:silver"> [관리자 전용 화면]</h2>
 <h3> 전체 회원 리스트 (id 순)</h3>
 <table width="500" border="1">
 <tr>
 <th>ID</th><th>PW</th><th>이름</th><th>나이</th><th>연락처</th><th>계좌잔액</th>
 </tr>
  <%while(rs.next()) {%>
  <tr>
  <td><%=rs.getString("id")%></td>
  <td><%=rs.getString("pw")%></td>
  <td><%=rs.getString("name")%></td>
  <td><%=rs.getInt("age")%></td>
  <td><%=rs.getString("phone")%></td>
  <td style="color:blue; text-align:right">
  <%=rs.getInt("balance")%></td>
  </tr>
  <%}%>
  </table>
  <br>
  <br>
<% rs = cre.executeQuery(sql2); %>
<h3> 전고객 거래현황(id,일자 순)</h3>
<table width="600" border="1">
<tr>
<th>ID</th><th>거래일자</th><th>입금액</th><th>출금액</th><th>이체여부</th><th>이체상대</th></tr>
<%while(rs.next()) {%>
<tr>
<td><%=rs.getString("id")%></td>
<td><%=rs.getString("tradedate")%></td>
<td style="color:blue; text-align:right"><%=rs.getString("deposit")%></td>
<td style="color:red; text-align:right"><%=rs.getString("withdraw")%></td>
<td><%=rs.getInt("trans")==1?"이체보냄":rs.getInt("trans")==2?"이체받음":""%></td>
<td><%=rs.getString("trade_id")%></td>
</tr>
 <%}%>
 </table>
 <br>
<% rs = cre.executeQuery(sql3); %>

 <h3> 탈퇴한 회원 리스트 (id 순)</h3>
 <table width="500" border="1">
 <tr>
 <th>ID</th><th>PW</th><th>이름</th><th>나이</th><th>연락처</th><th>계좌잔액</th>
 </tr>
  <%while(rs.next()) {%>
  <tr>
  <td><%=rs.getString("id")%></td>
  <td><%=rs.getString("pw")%></td>
  <td><%=rs.getString("name")%></td>
  <td><%=rs.getInt("age")%></td>
  <td><%=rs.getString("phone")%></td>
  <td style="color:blue; text-align:right">
  <%=rs.getInt("balance")%></td>
  </tr>
  <%}%>
  </table>
  <br>
 <p> <a href="menu.jsp">메뉴로 돌아가기</a>
 </div>
 
  <%} catch (Exception e) {
   out.print("거래내역 조회 중 문제 발생. 고객센터로 연락바랍니다. <p>" + e.getMessage());
}%>