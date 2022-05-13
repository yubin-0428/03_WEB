<!-- JSP: JSP, ASP, PHP 
1. jsp java Server page에 머리글자로써 썬에서 만든 자바 서블릿 기반 서버 스크립트 언어
2. 최초 서블릿으로 컴파일 된 후에 메모리에서 처리된다
3. jsp 또는 다른 서블릿간 데이터 공유가 쉽다.
4. 사용자 정의 태그를 만들어 사용할 수 있다. (JSTL) -->

<!-- 
    *.jsp -> *.java(Servlet) -> *.class -> 브라우저에 노출

 -->
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <j2>Hello, world</j2>
    <hr/>
    
    오늘의 날짜 : <%= new Date()%>
</body>
</html>