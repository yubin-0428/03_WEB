<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>세션 종료</h2>
  <hr/>
  
<%
    // 세션 종료
    session.invalidate();
%>

</body>
</html>