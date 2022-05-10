<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   String name = request.getParameter("name");
   String cellPhone = request.getParameter("cellphone");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <p>이름 : <%=name %><p><br/>
  <p>핸드폰:<%=cellPhone %></p>
</body>
</html>