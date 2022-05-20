<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>로그인</h2>
  <hr/>
  <form action="loginResult.jsp" method="post">
    <div>
      <label for="userId">로그인</label>
      <input type="text" name="userId" id="userId">
    </div>
    
    <div>
      <label for="passwd">비번</label>
      <input type="text" name="passwd" id="passwd">
    </div>
    <input type="submit" value="로그인">
  </form>

</body>
</html>