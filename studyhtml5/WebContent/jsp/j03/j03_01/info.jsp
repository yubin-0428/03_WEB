<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2></h2>
  <hr/>
  <jps:include page="/jsp/j03_01/infoSub.jsp">
    <jsp:param value="rain day!" name="type"/>
  </jps:include>
</body>
</html>