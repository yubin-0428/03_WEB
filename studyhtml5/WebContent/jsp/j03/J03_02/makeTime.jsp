<%@page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    Calendar cal = Calendar.getInstance();
    request.setAttribute("time", cal);
%>

<jsp:forward page="viewTime.jsp"/>