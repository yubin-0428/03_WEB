<!-- application 내장 객체 : application 기본 객체는 웹 어플리케이션 전반에 걸쳐서 사용되는 정보를 담고 있다.
    ex) 서버정보, 서버 초기화 정보 등 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    // 서버 정보 읽기
%>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>서버 정보 읽기</h2>
  <hr/>
  서블릿 정보 : <%=application.getServerInfo() %><br/>
  서블릿 규약 메이저 버전 : <%=application.getMajorVersion() %> <br/>
  서블릿 규약 마이너 버전 : <%=application.getMinorVersion() %> <br/>
</body>
</html>

web