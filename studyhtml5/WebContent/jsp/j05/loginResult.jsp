<%@page import="studyhtml5.UserVO"%>
<%@page import="com.pcwk.cmn.StringUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String userId = StringUtil.nvl(request.getParameter("userId"),"");
    String passwd = StringUtil.nvl(request.getParameter("passwd"),"");
    
    if(null != userId && userId.equals(passwd)){
    	UserVO vo = new UserVO();
    	vo.setUserId(userId);
    	vo.setPasswd(passwd);
    	vo.setName("디벨로퍼");
    	
    	session.setAttribute("user", vo);
    	out.print("로그인 성공");
    }else{
    	out.print("로그인 실패");
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>로그인:Result</h2>
  <hr/>

</body>
</html>