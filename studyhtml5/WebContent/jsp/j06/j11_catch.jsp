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
  <h2>JSTL:catch</h2>
  <hr/>
  <!-- http://localhost:8080/studyhtml5/jsp/j06/j11_catch.jsp?name=4 -->
  <c:catch var="ex"><!-- 예외값을 저장할 변수 ex -->
    name 파라메터 :<%=Integer.parseInt(request.getParameter("name")) %><br/>
    <%
      out.print(request.getParameter("name"));
    %>
  </c:catch>
  
  <c:if test="${null != ex }"> <!-- 예외변수가 존재하면 -->
  예외발생!<br/>
    ${ex }
  </c:if>
</body>
</html>