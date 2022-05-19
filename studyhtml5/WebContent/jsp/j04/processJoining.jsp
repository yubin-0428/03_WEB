<!-- 자바빈      
   속성(데이터), 변경 이벤트, 객체 직렬화를 위한 표준   
   jsp에서는 속성을 표현하기 위한 용도로 사용된다.   
   자바의 VO객체와 비슷   
      
   MemberInfo.java   
   memberSignForm.jsp   
   processJoining.jsp    -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("utf-8");
%>
<!-- MemberInfo memberInfo = new MemberInfo() -->
<jsp:useBean id="memberInfo" class="com.pcwk.j04.MemberInfo"></jsp:useBean>
<jsp:setProperty name="memberInfo" property="*"></jsp:setProperty>
<!-- 비번 -->
<jsp:setProperty name="memberInfo" property="password" value="<%=memberInfo.getId() %>"></jsp:setProperty>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>회원가입 정보</h2>
  <hr/>
  아이디 : <%= memberInfo.getId()%><br/>
  이름 : <%= memberInfo.getName()%><br/>
  이메일 : <%=memberInfo.getEmail()%>
  
  <!-- memberInfo.getPassword() -->
  비번 : <jsp:getProperty property="password" name="memberInfo"/>
</body>
</html>

유스케이스 다이아그램 : 시스템과 사용자의 상호작용을 다이어그램으로 표현한 것으로 사용자의 관점에서 시스템의 서비스 혹은 기능 및 그와 관련한 외부 요소를 보여주는 것이다.
사용자가 시스템 내부에 있는 기능 중에 어떤 기능을 사용 할 수 있는지 나타내며 유스케이스 다이어그램을 사용함으로써 고객과 개발자가 요구사항에 대한 의견을 조율 할 수 있다.

포함관계(include) : 하나의 유스케이스가 다른 유스케이스의 실행을 전제로 할 때 형성되는 관계이다.

시퀀스 다이어그램 : 기능 수행을 위해 시스템 내의 객체들이 다른 객체들과 어떻게 교류하는지를 보여주는 다이어그램이다. 
시간의 흐름에 따른 객체 간의 상호 작용을 명세화하여 나타낸 다이어 그램으로 객체와 생명선, 객체의 실행, 객체 사이의 메시지 등으로 구성된다