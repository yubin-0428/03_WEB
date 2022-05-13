<%-- include 지시어 : 현재 jsp파일에 다른 html이나 jsp문서를 포함하기 위한 기능을 제공한다. --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="h09_respone_cache.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>include 지시어 테스트</h2>
  <hr/>
  <%@ include file="h10_1_footer.jsp" %>
</body>
</html>