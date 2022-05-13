<!-- - jsp내장 객체 : jsp내에서 선언하지 않고 사용하는 객체
- request 메서드 : 사용자가 form에 입력한 param을 얻어낼 수 있는 기능
  : 웹 브라우저 요청에 대한 처리
  : 클라이언트와 관련된 정보 읽기
  : 서버와 관련된 정보
  : 클라이언트가 요청한 전송 정보
  : 클라이언트가 전송한 쿠키
  -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>request 내장 객체</h2>
  <hr/>

    서버포트 : <%= request.getServerPort() %><br/>
    서버이름 : <%= request.getServerName() %><br/>
  client ip :<%= request.getRemoteAddr() %><br/>
    요청정보 인코딩 : <%=request.getProtocol() %><br/>
    요청 컨텍스 : <%=request.getContextPath() %><br/>
    서버URL : <%=request.getRequestURI() %>
    
</body>
</html>