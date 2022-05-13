<!-- response : 사용자 요청에 대한 응답을 처리하기 위한 객체 -->

<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>request header 정보</h2>
  <hr/>

<%
    Enumeration<String> names = request.getHeaderNames();
    while(names.hasMoreElements()){
    	String headerName = names.nextElement();
    	//System.out.println("headerName:"+headerName);
        out.println(headerName+ ":" + request.getHeader(headerName)+"<br/>");
    }
    
    out.println("<hr/>");
    String userAgent = request.getHeader("user-agent");
    String host = request.getHeader("host");
    
    out.println("userAgent:"+userAgent+"<br/>");
    out.println("host:"+host+"<br/>");
%>
</body>
</html>