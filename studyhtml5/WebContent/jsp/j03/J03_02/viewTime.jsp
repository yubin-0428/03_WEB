<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    Calendar cal = (Calendar)request.getAttribute("time");
    out.print("íėŽėę° : "+cal.get(Calendar.HOUR)
                     +":" +cal.get(Calendar.MINUTE)
                     +":" +cal.get(Calendar.SECOND)
    		);
%>