<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%  // post 한글 전송시 한글 깨짐 처리
    request.setCharacterEncoding("utf-8"); //요청에 대한 utf-8 Encoding
    
    String id = (String)request.getParameter("id");
    out.print("id="+id+"<br/>");
    
    String pass = (String)request.getParameter("pass");
    out.print("pass="+pass);
    %>