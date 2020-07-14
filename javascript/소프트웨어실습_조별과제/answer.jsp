<%--answer.jsp --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body{
font-family:맑은고딕;
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
#text1{
position:static;
border: 3px dashed white;
width:400px;
background-color:pink;
}

</style>
<body>
<div align="center">
<form method="post" action="answer_update.jsp"> 
<br> 
<font color=white>Num:</font> <input type="text" name="seq" size=3> <br> 
<textarea name="answer" id="text1" rows=4 cols=50></textarea> <br>
<input type="submit" id="button1" value="답변등록" /> </form><p>
</div>
</body>
</html>