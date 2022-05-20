<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
                              // (이름, 값)
    Cookie cookie = new Cookie("pcwk",URLEncoder.encode("오늘은 아주 즐거운 금요일!","UTF-8"));
    response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>쿠키생성</h2>
  <hr/>

  <p>쿠키생성</p>
</body>
</html>