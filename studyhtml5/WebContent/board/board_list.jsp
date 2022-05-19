<%@page import="com.pcwk.cmn.StringUtil"%>
<%@page import="com.pcwk.board.SearchVO"%>
<%@page import="com.pcwk.board.BoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/com/common.jsp" %>    
    
<%
    // param
    SearchVO param = (SearchVO)request.getAttribute("param");
    //out.println("param:"+param);
    
    // list
    List<BoardVO> list = (List<BoardVO>)request.getAttribute("list");
    if(null != list && list.size() > 0){
    	for(BoardVO vo : list){
//     		out.println(vo);
    	}
    }
    
    int totalCnt =(request.getAttribute("totalCnt") == null?0:(Integer)request.getAttribute("totalCnt"));
    LOG.debug("totalCnt:"+totalCnt);
    

    int currPageNo = 1; // 현재 페이지
    
    int rowPerPage = 10; // 페이지당 보여줄 글 수
    
    int bottomCount = 10; // 1 2 3 4 5 6 7 8 9 10
    
    String goPageURL = contPath+"/board/board.do"; // 호출 URL
    
    String scriptName = "doSearchPage"; // 호출 자바 스크립트
    
    if(null != param){
    	currPageNo = param.getPageNum();
    	rowPerPage = param.getPageSize();
    }
    
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<meta charset="UTF-8">
<link rel="shortcut icon" type="image/x-icon" href="<%=contPath %>/favicon2.ico">


<!--reset 스타일 시트 -->
<!-- link rel="stylesheet" type="text/css" href="<%=contPath %>/asset/css/reset.css" -->

<!--bootstrap CDN -->
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<link rel="stylesheet"  type="text/css" href="<%=contPath %>/asset/css/jquery-ui.css">
<!--스타일 시트 -->
<style type="text/css">
</style>
<title>Insert title here</title>
<!-- jquery -->
<script type="text/javascript" src="<%=contPath %>/asset/js/jquery-1.12.4.js"></script>
<!-- jQuery UI -->
<script type="text/javascript" src="<%=contPath %>/asset/js/jquery-ui.js"></script>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<!--스타일 시트 -->
<style type="text/css">
  * {
    margin: 0;
    padding: 0;
  }    
  
  table{
     width: 600px;
     border-collapse: collapse; 
  }
  
  td,th {
     border-bottom: 1px solid lightgrey;
     padding: 5px;
  }
  
  th {
     background: gray;
     color: #fff;
  }
  
  .txt_left{
    text-align : left;
    }
    
  .txt_center{
    text-align: center;      
    }
    
  .txt_right{
    text-align: right;
  }  
  
</style>
<title>게시목록</title>
</head>
<body>
  <h2>게시목록</h2>
  <hr/>
  <!--  -->
  <div>
    <div>
        <input type="button" value="조회" onclick="doRetrieve();">
        <input type="button" value="등록" id="moveToReg">
    </div>
    <form action="<%=contPath %>/board/board.do" name="boardListFrm" method="get" id = "boardListFrm">
        <input type="hidden" name="work_div" id="work_div">
        <input type="hidden" name="seq" id="seq">
        <input type="text"   name="pageNum" id="pageNum" value="<%if(null != param){out.print(param.getPageNum());} %>"/>
        <div>
            <label>구분</label>   
            <select name="searchDiv" id="searchDiv">
                <option value="">전체</option>
                <option value="10" <% if(null != param && "10".equals(param.getSearchDiv()) ){out.print("selected");} %>>순번</option>
                <option value="20">제목</option>
                <option value="30">내용</option>
                <option value="40">제목+내용</option>
            </select>
            <input type="text" name="searchWord" id="searchWord" size="15" value="<% if(null != param){out.print(param.getSearchWord());} %>">
            <select name="pageSize" id = "pageSize">
                <option value="10" <% if(null != param && 10 == param.getPageSize()){out.print("selected");} %>>10</option>
                <option value="20" <% if(null != param && 20 == param.getPageSize()){out.print("selected");} %>>20</option>
                <option value="50">50</option>
                <option value="100">100</option>
            </select>
        </div>
    </form>
  </div>
  
  <table id="listTable">
    <thead>
        <tr>
	       <th width="80">No.</th>
	       <th width="80">제목</th>
	       <th width="80">조회수</th>
	       <th width="100">등록자</th>
	       <th width="80">등록일</th>
	       <th width="80" style="display: none;">SEQ</th>
        </tr>
    </thead>
    
    <tbody>
    <%
    if(null != list && list.size() > 0){
        for(BoardVO vo : list){
    %> 
        <tr>
            <td class="txt_center"><%=vo.getNo() %></td>
            <td><%=vo.getTitle() %></td>
            <td class="txt_right"><%=vo.getReadCnt() %></td>
            <td><%=vo.getModId() %></td>
            <td class="txt_center"><%=vo.getModDt() %></td>
            <td style="display: none;"><%=vo.getSeq() %></td>
        </tr>
      <%
        } // for
        
    }else{ // if
      %>
      
        <tr>
            <td colspan="99">No data found</td>
        </tr>
      
      <%
    } //else
      %>
      
      <!-- pagint -->
      
      <div>
        <%=StringUtil.renderPaging(totalCnt, currPageNo, rowPerPage, bottomCount, goPageURL, scriptName) %>      
      </div>
      
      <!--// pagint -------------------------------------------->
      
    </tbody>
  </table>
   
<script type="text/javascript">
    function doSearchPage(url,num){
    	console.log('url:'+url);
    	console.log('num:'+num);
    	let frm = document.getElementById("boardListFrm");
        frm.work_div.value='doRetrieve';
        frm.pageNum.value = num;
        
        console.log('frm.work_div.value:'+frm.work_div.value);
        console.log('frm.searchDiv.value:'+frm.searchDiv.value);
        console.log('frm.pageSize.value:'+frm.pageSize.value);
        
        frm.action = url;
        // form submit()
        frm.submit();
    }
    
    
    // event감지
    $('#listTable > tbody').on('click','tr', function(){
    	console.log('listTable');
    	console.log('this:'+$(this));
    	let pTr = $(this);
    	let tdArray = pTr.children();
    	
    	//let seq = tdArray.eq(5).text();
    	let seq = tdArray.last().text();
    	console.log('seq:'+seq);
    	let frm = document.getElementById("boardListFrm");
    	frm.seq.value = seq; // 게시판PK
    	frm.work_div.value = 'doSelectOne';
    	
    	console.log('frm.seq.value:'+frm.seq.value);
    	console.log('frm.work_div.value:'+frm.work_div.value);
    	
    	// 서버 전송
    	frm.submit();
    });
    
    function doRetrieve(){
    	// alert('doRetrieve()');
    	// javascript form submit()
    	// document.boardListFrm
    	let frm = document.getElementById("boardListFrm");
    	frm.work_div.value='doRetrieve';
    	console.log('frm.work_div.value:'+frm.work_div.value);
    	console.log('frm.searchDiv.value:'+frm.searchDiv.value);
    	console.log('frm.pageSize.value:'+frm.pageSize.value);
        
        // form submit()
        frm.submit();
    }
    
    $('#moveToReg').on('click', function(){
    	console.log('moveToReg');
    	let frm = document.boardListFrm;
    	frm.work_div.value = 'moveToReg';
    	console.log('frm.work_div.value:'+ frm.work_div.value);
    	
    	frm.submit();
    });
    
    
</script>
</body>
</html>



