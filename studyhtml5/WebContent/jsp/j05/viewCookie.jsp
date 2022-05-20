<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>쿠키 읽기</h2>
  <hr/>
<%
    Cookie[] cookieArray = request.getCookies();
    if(null != cookieArray && cookieArray.length > 0){
    	for(Cookie cookie :cookieArray){
    		out.print(cookie.getName() + ":" + URLDecoder.decode(cookie.getValue(), "UTF-8")+"<br/>");
    	}
    }else{
    	out.print("쿠키가 존재하지 않습니다.");
    }
%>

</body>
</html>