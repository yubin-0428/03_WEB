<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <!-- 기존 이름에 새로운 데이터를 넣어서 보내면 수정! -->
  <h2>쿠키수정</h2>
  <hr/>
  
  <%
    Cookie[] cookies = request.getCookies(); // 브라우저에 존재하는 기존 쿠키 조회
    if(null != cookies && cookies.length > 0){ // 쿠키 존재 유무 확인
    	for(Cookie cookie:cookies){
    		// 쿠키 이름이 : pcwk 이면
    		if(cookie.getName().equals("pcwk")){
    			Cookie newPcwk = new Cookie("pcwk",URLEncoder.encode("JSP Cookie를 굽는다","UTF-8"));
    			// 생성한 쿠키를 브라우저에 전송
    			response.addCookie(newPcwk);
    		}
    		
    	}
    }
  %>

</body>
</html>