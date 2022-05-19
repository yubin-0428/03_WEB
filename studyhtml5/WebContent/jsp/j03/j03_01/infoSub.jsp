<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String type = request.getParameter("type");
    if(null == type)return;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>type:<%=type %></h2>
  <hr/>
  
</body>
</html>

request.setAttribute("변수", "값");