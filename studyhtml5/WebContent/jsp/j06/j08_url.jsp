<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL:url</title>
</head>
<body>
  <h2>JSTL:url</h2>
  <hr/>
  
  <!-- https://search.daum.net/search?w=blog&q=%ED%95%98%EB%8A%98%EA%B3%B5%EC%9B%90 -->
  <c:url var="searchURL" value="https://search.daum.net/search">
    <c:param name="w" value="blog"/>
    <c:param name="q" value="하늘공원"/>
  </c:url>

  <ul>
    <li>${searchURL}</li>
    <li><c:url value="/jsp/j06/j01_jstl.jsp"/></li> <!-- url정보 절대경로 -->
    <li><c:url value="./j01_jstl.jsp"/></li> <!-- url정보 상대경로 -->
  </ul>
</body>
</html>