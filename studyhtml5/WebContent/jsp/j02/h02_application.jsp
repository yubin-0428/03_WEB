<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>application param</h2>
  <hr/>
<%  
// init param 변수 이름 추출
Enumeration<String> initParamNames = application.getInitParameterNames();
while(initParamNames.hasMoreElements()){
	String paramName = initParamNames.nextElement();
	String paramValue = application.getInitParameter(paramName); // 초기화 파라메터의 값을 추출
	out.println("paramName:"+paramName+"="+paramValue+"<br/>");
}

 %>

</body>
</html>