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
  <h2>request처리</h2>
  <hr/>

<%
    String userNm   = request.getParameter("userNm");
    String userCell = request.getParameter("userCell");
    String lang     = request.getParameter("lang");
%>
이름 : <%=userNm %><br/>
전화번호 : <%=userCell %><br/>
<!-- 다건 전송 중 1건만 read -->
좋아하는 프로그램 : <%=lang %> <br/>

<%
    String[] langArray = request.getParameterValues("lang");
    for(int i=0; i<langArray.length; i++){
    	out.print(langArray[i]+"<br/>");
    }
%>

변수 이름들 추출
<%
    Enumeration<String> names = request.getParameterNames();
    while(names.hasMoreElements()){
	  String name = names.nextElement();
	  out.println(name+":"+request.getParameter(name)+"</br>");
    }
%>
</body>
</html>