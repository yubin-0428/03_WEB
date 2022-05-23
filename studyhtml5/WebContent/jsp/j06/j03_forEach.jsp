<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>jstl:forEach</h2>
  <hr/>
  
  <h3>::FOR EACH : 1~100까지 홀수 합</h3>
  <hr/>
  <!-- var : 변수 명, sum = 0으로 초기화 -->
  <c:set var="sum" value="0"/>
  
  <!-- var=i는 1부터 100까지 2증가 -->
  <c:forEach var="i" begin="1" end="100" step="1">
    <c:set var="sum" value="${sum + i }"/>
  </c:forEach>
  결과 : ${sum }<br/>
</body>
</html>