<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
    // http://localhost:8081/studyhtml5/jsp/j01/h11_response_redirect.jsp?userId=pcwk
    String userId = request.getParameter("userId");
    System.out.println("userId:"+userId);
    
    if(null != userId && userId.equals("pcwk")){
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2></h2>
  <hr/>

</body>
</html>