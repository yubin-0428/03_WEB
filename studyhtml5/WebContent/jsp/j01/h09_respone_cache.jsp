<%-- respone 내장 객체 : request 기본 객체와 반대의 기능을 수행, 웹 브라우저에 전송할 내용을 담을 수 있다.
- 헤더 입력 : cash control 
: 웹 캐시 (web cash) 또는 HTTP 캐시(HTTP cache)는 서버 지연을 줄이기 위해 웹 페이지, 
이미지, 기타 유형의 웹 멀티미디어 등의 웹 문서들을 임시 저장하기 위한 정보기술이다. 
모든 jsp에 포함 가능 : <jsp : include=''>
<%@ include file=''%>
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    // Http 1.1에서 지원하는 헤더 : 웹 브라우저가 응답결과를 캐시하지 않음
    response.setHeader ("Cache-Control", "no-cache");

    // 웹 브라우저가 응답결과를 캐시하지 않음(앞/뒤로가기 no-cache)
    response.setHeader ("Cache-Control", "no-store");
    
    // Http 1.0에서 지원하는 헤더 : 웹 브라우저가 응답결과를 캐시하지 않음 
    response.setHeader ("Pragma", "no-cache");
    
    // Http 1.0에서 현재시간 이전으로 캐시하지 않음
    response.setHeader("Expires","1L");
    out.println("웹 브라우저가 응답결과를 캐시하지 않음");
%>