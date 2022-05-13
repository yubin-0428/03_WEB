<%@ page language="java" contentType="text/html; charset=UTF-8"
    isErrorPage="true"
    pageEncoding="UTF-8"%>

<h2>처리중 문제가 발생했습니다.</h2>
<hr/>
<table>
  <tr width='100%' bgcolor="pink">
    <td>관리자에게 문의해 주세요<br/>
         빠른시간에 복구하겠습니다.
     </hr>
     <%=exception.toString() %>
    </td>
  </tr>

</table>