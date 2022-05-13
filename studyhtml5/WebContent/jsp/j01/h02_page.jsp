<!-- 지시어(지시자, Directives) : jsp페이지에 속성을 기술하는 곳으로 
jsp 컨테이너에게 해당 페이지를 어떻게 처리해야는지 전달하기 위한 내용을 담고있다.

- language : 페이지에서 사용하는 언어
- contentType : jsp MIME
- pageEncoding : UTF-8
- import : java import와 동일 -->

<%@ page import = "java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %> <%-- html출력 상단 2줄 공백 제거 --%>
<% 
    Date d = new Date();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>page속성</h2>
  <hr/>
  
  <div>
      <%-- 날짜 데이터 출력 --%>
      날짜:<%=d %><br/>
    
    <%
      //java code
      for(int i = 1; i<= 10;i++){
    %>
          
          <p><%=i %></p>
    <%  
      }
    %>
  
  </div>
</body>
</html>