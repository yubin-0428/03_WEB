<%@page import="com.pcwk.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/com/common.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<meta charset="UTF-8">
<link rel="shortcut icon" type="image/x-icon" href="<%=contPath %>/favicon2.ico">


<!--reset 스타일 시트 -->
<!-- link rel="stylesheet" type="text/css" href="<%=contPath %>/asset/css/reset.css" -->
<link rel="stylesheet"  type="text/css" href="<%=contPath %>/asset/css/jquery-ui.css">
<!--스타일 시트 -->
<style type="text/css">
</style>
<title>Insert title here</title>
<!-- jquery -->
<script type="text/javascript" src="<%=contPath %>/asset/js/jquery-1.12.4.js"></script>
<!-- jQuery UI -->
<script type="text/javascript" src="<%=contPath %>/asset/js/jquery-ui.js"></script>
<script type="text/javascript" src="<%=contPath %>/asset/js/common.js"></script>
</head>
<body>
  <h2>textarea maxlength</h2>
  <hr/>
  <div>
	<div>
	  <p class="textCount">0자</p>
	  <p class="textTotal">100자</p>
	</div>
  </div>
  <textarea rows="10" cols="50" maxlength="100" id="textBox" placeholder="글자를 입력하세요."></textarea>
  
  <script type="text/javascript">
    // keyboard event keyup
    $('#textBox').on('keyup', function(){
    	//console.log('#textBox keyup');
    	let content = $(this).val();
        
    	//console.log('content :'+content);
        // 글자 수 세기
        if(isEmpty(content) || content.length == 0){
        	$('.textCount').text('0자');
        }else{
        	$('.textCount').text(content.length+'자');
        }
        
        // 글자 수 제한
        if(content.length >= 100){
        	$(this).val( $(this).val().substring(0, 100) );
        	alert('글자수는 100자까지 입력 가능합니다.');
        }
    	
    	
    });
    
  
  </script>
</body>
</html>