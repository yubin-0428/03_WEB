package com.pcwk.board;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.google.gson.Gson;
import com.pcwk.cmn.MessageVO;
import com.pcwk.cmn.StringUtil;

/**
 * Servlet implementation class BoardController
 */
@WebServlet(description = "게시판 컨트롤러", urlPatterns = { "/board/board.do" })
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	final Logger LOG = Logger.getLogger(this.getClass());
	BoardDao boardDao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardController() {
        super();
        boardDao = new BoardDao();
    }

	/**
	 * VIEW wirk_div = doSave ->
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		work_div	doSave
//					doRetrieve
//					doSelectOne
//					doUpdate
//					doDelete
		//request에 인코딩 : UTF-8
		request.setCharacterEncoding("UTF-8");
		//String workDiv = request.getParameter("work_div") == null ? "" : request.getParameter("work_div");
		String workDiv = StringUtil.nvl(request.getParameter("work_div"), "");
		LOG.debug("=======================");
		LOG.debug("=workDiv=" + workDiv);
		LOG.debug("=======================");
		
		//DAO분기
		switch (workDiv) {
		case "doSave": //등록 http://localhost:8081/studyhtml5/board/board.do?work_div=doSave
			doSave(request,response);
			break;

		default:
			break;
		}//switch
	}

	protected void doSave(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LOG.debug("=======================");
		LOG.debug("=doSave=");
		LOG.debug("=======================");
		BoardVO paramVO = new BoardVO();
		//paramSet
		//seq, title, contents, reg_id, mod_id
		
		String seq   = StringUtil.nvl(request.getParameter("seq"),"0");
		String title = StringUtil.nvl(request.getParameter("title"),"");
		String regId = StringUtil.nvl(request.getParameter("reg_id"),"");
		String contents = StringUtil.nvl(request.getParameter("contents"),"");
		LOG.debug("=title=" + title);
		
		String modId = regId; //최초 등록시 등록자id와 수정자id는 동일
		
		paramVO.setSeq(Integer.parseInt(seq));
		paramVO.setTitle(title);
		paramVO.setRegId(regId);
		paramVO.setModId(modId);
		paramVO.setContents(contents);
		
		LOG.debug("=paramVO=" + paramVO.toString());
		
		// DAO 호출
		int flag = this.boardDao.doSave(paramVO);
		LOG.debug("=flag=" + flag); // 1이 들어오면 등록된거임
		
		// VIEW 전송
		// flag : 1성공, 0실패
		MessageVO msgVO = new MessageVO();
		
		msgVO.setMessageId(String.valueOf(flag));
		
		String message ="";
		if(1==flag) {
			message = "등록 성공!";
		}else {
			message = "등록 실패!";
		}
		
		msgVO.setMsgContents(message);
		
		Gson gson = new Gson();
		String jsonString = gson.toJson(msgVO);
		
		LOG.debug("==============================");
		LOG.debug("=jsonString="+jsonString);
		LOG.debug("==============================");
		
		// VIEW 전송
		// 
		response.setContentType("test/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(jsonString);
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}