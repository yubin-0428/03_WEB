<%@ page import="java.util.Date" %>
<%@ page import="java.util.HashMap" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
   HashMap<String,Object> mapData= new HashMap<String, Object>();
   mapData.put("name","pcwk");
   mapData.put("today",new Date());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>forEach:map</h2>
  <hr/>
  
  <c:set var="map" value="<%=mapData %>"/>
  <c:forEach var="i" items="${map }">
    ${i.key}=${i.value}<br/>
  </c:forEach>

</body>
</html>