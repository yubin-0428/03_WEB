<%@ page contentType="application/vnd.ms-excel;charset=UTF-8" pageEncoding="utf-8"%>

<%     
    response.setHeader("Content-Disposition", "attachment; filename=diary.xls"); 
    response.setHeader("Content-Description", "JSP Generated Data"); 
    response.setContentType("application/vnd.ms-excel");
%>
contentType: 현재 jsp 내용에 대한 유형을 결정(원하는 MIME을 기록)