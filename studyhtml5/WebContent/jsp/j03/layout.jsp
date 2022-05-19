<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include : layout</title>
</head>
<body>
  <h2>include layout</h2>
  <hr/>
  
  <table width="400" border="1" cellpadding="0" cellspacing="0">
    <tr>
        <td colspan="2"><jsp:include page="/jsp/j03/top.jsp"></jsp:include></td>
    </tr>  
    <tr>
        <td width="100"><jsp:include page="/jsp/j03/left.jsp" ></jsp:include></td>
        <td width="300">contents<br/><br/><br/><br/></td>
    </tr>
    <tr>
        <td colspan="2"><jsp:include page="/jsp/j03/bottom.jsp"></jsp:include></td>
    </tr>
  </table>
</body>
</html>