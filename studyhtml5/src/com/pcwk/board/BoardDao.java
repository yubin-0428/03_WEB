package com.pcwk.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

public class BoardDao implements WorkDiv<BoardVO> {
	final Logger LOG = Logger.getLogger(this.getClass());
	private PConnection pConnection;
	
	public BoardDao() {
		pConnection = new PConnection();
	}
	
	/**
	 * 총글수
	 * @param dto
	 * @return 총 건수
	 */
	public int totalCount(DTO dto) {
		int totalCnt = 0;
		SearchVO inVO = (SearchVO) dto;
		
		Connection conn = null; // DB연결
		PreparedStatement pstmt = null; // SQL + data
		ResultSet rs = null; // DB에서 전달된 정보 추출
		StringBuilder sb = new StringBuilder();
		
		// 조건절 sb
		StringBuilder sbWhere = new StringBuilder();
		
		// 1. DB 연결
		conn = pConnection.connect();
		
		// 검색조건 : searchDiv(검색조건), searchWord(검색어)
		// "" : 전체
		// 10 : seq
		// 20 : title
		// 30 : contents
		// 40 : title + contents
		if( null != inVO) {
			if(inVO.getSearchDiv().equals("10")) {
				sbWhere.append(" WHERE seq LIKE ? || '%' \n");
			}else if(inVO.getSearchDiv().equals("20")) {
				sbWhere.append(" WHERE title LIKE ? || '%' \n");
			}else if(inVO.getSearchDiv().equals("30")) {
				sbWhere.append(" WHERE contents LIKE ? || '%' \n");
			}else if(inVO.getSearchDiv().equals("40")) {
				sbWhere.append(" WHERE title LIKE ? || '%' \n");
				sbWhere.append(" OR contents LIKE ? || '%' \n");
			}else if(inVO.getSearchDiv().equals("")) { // 검색조건이 없으면 전체검색

			}
		}
		
		// 2. SQL 작성 
		sb.append(" SELECT COUNT(*) AS total_cnt \n");
		sb.append(" FROM board                   \n");
		sb.append(" -- 검색조건                    \n");
		sb.append(sbWhere.toString());
		
		LOG.debug("query: \n" + sb.toString());
		LOG.debug("param: " + dto.toString());
		
		try {
			// 3. param 전달
			pstmt = conn.prepareStatement(sb.toString());
			
			if(null != inVO && !inVO.getSearchDiv().equals("")) {
				if(inVO.getSearchDiv().equals("10")) {
					pstmt.setString(1, inVO.getSearchWord());
				}else if(inVO.getSearchDiv().equals("20")) {
					pstmt.setString(1, inVO.getSearchWord());
				}else if(inVO.getSearchDiv().equals("30")) {
					pstmt.setString(1, inVO.getSearchWord());
				}else if(inVO.getSearchDiv().equals("40")) {
					pstmt.setString(1, inVO.getSearchWord());
					pstmt.setString(2, inVO.getSearchWord());
				}
			}
			
			// 4. SQL 실행
			rs = pstmt.executeQuery();
			
			// 5. return받은 ResultSet에서 DB에서 전달된 데이터 추출
			if(rs.next()) {
				totalCnt = rs.getInt("total_cnt");
			}
			LOG.debug("totalCnt: " + totalCnt);
			
			
		}catch (SQLException e) {
			LOG.debug("SQLException: " + e.getMessage());
			e.printStackTrace();
			// 6. 자원반납
		}finally {
			// rs 자원반납
			JDBCUtil.close(rs);
			// pstmt 자원반납
			JDBCUtil.close(pstmt);
			// conn 자원반납
			JDBCUtil.close(conn);
		}
		
		return totalCnt;
	}
	
	/**
	 * 조회 count증가
	 * @param dto
	 * @return 1(성공)/0(실패)
	 */
	public int updateReadCnt(BoardVO dto) {
		int flag = 0;
		
		Connection conn = null; // DB 연결정보
		PreparedStatement pstmt = null; // SQL + data
		StringBuilder sb = new StringBuilder(100);
		
		// 1. DB 연결
		conn = pConnection.connect();
		
		// 2. SQL 작성
		sb.append(" UPDATE board			   \n");
		sb.append(" SET read_cnt = read_cnt +1 \n");
		sb.append(" WHERE seq = ?			   \n");
		
		LOG.debug("query: \n" + sb.toString());
		LOG.debug("param: " + dto.toString());
		
		try {
			// 3. param 전달
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, dto.getSeq());
			
			// 4. SQL 실행
			flag = pstmt.executeUpdate();
			
			// 5. SQL 실행 결과
			LOG.debug("flag: " + flag);
			
		}catch (SQLException e) {
			LOG.debug("SQLException: " + e.getMessage());
			e.printStackTrace();
			// 6. 자원 반납
		}finally {
			// pstmt 자원 반납
			JDBCUtil.close(pstmt);
			// conn 자원 반납
			JDBCUtil.close(conn);
		}
	
		return flag;
	}
	
	@Override
	public List<BoardVO> doRetrieve(DTO dto) {
		List<BoardVO> boardList = new ArrayList<BoardVO>(); // return
		SearchVO inVO = (SearchVO) dto;
		
		// -------------------------------------------------------------
		// JDBC연결
		// 1. JDBC DRIVER LOADING
		// 2. CONNECTION 생성
		// 3. PreparedStatement 생성
		// 4. 쿼리 실행
		// 5. 쿼리 실행 결과 처리
		// 6. 자원반납(CLOSE)
		// --ResultSet
		// --PreparedStatement
		// --Connection
		// -------------------------------------------------------------

		Connection conn = null; // DB연결 정보
		PreparedStatement pstmt = null; // SQL + data
		ResultSet rs = null; // DB에서 전달된 정보 추출
		StringBuilder sb = new StringBuilder(300);
		
		// 검색 조건 처리
		StringBuilder sbWhere = new StringBuilder(200);
		
		// 1. DB 연결
		conn = pConnection.connect();
		
		// 검색조건 : searchDiv(검색조건), searchWord(검색어)
		// "" : 전체
		// 10 : seq
		// 20 : title
		// 30 : contents
		// 40 : title + contents
		if ( null != inVO) {
			if(inVO.getSearchDiv().equals("10")) {
				sbWhere.append(" WHERE seq LIKE ? || '%' \n");
			}else if(inVO.getSearchDiv().equals("20")) {
				sbWhere.append(" WHERE title LIKE ? || '%' \n");
			}else if(inVO.getSearchDiv().equals("30")) {
				sbWhere.append(" WHERE contents LIKE ? || '%' \n");
			}else if(inVO.getSearchDiv().equals("40")) {
				sbWhere.append(" WHERE title LIKE ? || '%' \n");
				sbWhere.append(" OR contents LIKE ? || '%' \n");
			}else if(inVO.getSearchDiv().equals("")) { // 전체 
				
			}
		}
		
		// 2. SQL 작성
		sb.append(" SELECT                                        \n");
		sb.append("     A.seq,                                    \n");
		sb.append("     A.rnum AS NUM,                            \n");
		sb.append("     A.title,                                  \n");
		sb.append("     A.read_cnt,                 	          \n");
		sb.append("     TO_CHAR(A.mod_dt,'YYYY/MM/DD') AS mod_dt, \n");
		sb.append("     A.mod_id                                  \n");
		sb.append(" FROM(                                         \n");
		sb.append("     SELECT ROWNUM AS RNUM, t1.*               \n");
		sb.append("     FROM(                                     \n");
		sb.append("         SELECT *                              \n");
		sb.append("         FROM board                            \n");
		sb.append("         --검색조건                              \n");
		// 조건절
		sb.append(sbWhere.toString());
		sb.append("         ORDER BY mod_dt DESC                  \n");
		sb.append("     )t1                                       \n");
		sb.append("     WHERE ROWNUM <= (? * ( ? - 1 ) + ? )      \n");
		sb.append(" )A                                            \n");
		sb.append(" WHERE RNUM >= (? * ( ? - 1 ) + 1 )            \n");
//        (&PAGE_SIZE * ( &PAGE_NUM - 1 ) + &PAGE_SIZE ) (? * ( ? - 1 ) + ? )
//        (&PAGE_SIZE * ( &PAGE_NUM - 1 ) + 1 ) (? * ( ? - 1 ) + 1 )
		
		LOG.debug("query: \n" + sb.toString());
		LOG.debug("param: " + dto.toString());
		
		try {
			// 3. param 전달
			pstmt = conn.prepareStatement(sb.toString());
			if(null != inVO && !inVO.getSearchDiv().equals("")) {
				if(inVO.getSearchDiv().equals("10")) {
					pstmt.setString(1, inVO.getSearchWord());
					pstmt.setInt(2, inVO.getPageSize());
					pstmt.setInt(3, inVO.getPageNum());
					pstmt.setInt(4, inVO.getPageSize());
					pstmt.setInt(5, inVO.getPageSize());
					pstmt.setInt(6, inVO.getPageNum());
				}else if(inVO.getSearchDiv().equals("20")) {
					pstmt.setString(1, inVO.getSearchWord());
					pstmt.setInt(2, inVO.getPageSize());
					pstmt.setInt(3, inVO.getPageNum());
					pstmt.setInt(4, inVO.getPageSize());
					pstmt.setInt(5, inVO.getPageSize());
					pstmt.setInt(6, inVO.getPageNum());
				}else if(inVO.getSearchDiv().equals("30")) {
					pstmt.setString(1, inVO.getSearchWord());
					pstmt.setInt(2, inVO.getPageSize());
					pstmt.setInt(3, inVO.getPageNum());
					pstmt.setInt(4, inVO.getPageSize());
					pstmt.setInt(5, inVO.getPageSize());
					pstmt.setInt(6, inVO.getPageNum());
				}else if(inVO.getSearchDiv().equals("40")) {
					pstmt.setString(1, inVO.getSearchWord());
					pstmt.setString(2, inVO.getSearchWord());
					pstmt.setInt(3, inVO.getPageSize());
					pstmt.setInt(4, inVO.getPageNum());
					pstmt.setInt(5, inVO.getPageSize());
					pstmt.setInt(6, inVO.getPageSize());
					pstmt.setInt(7, inVO.getPageNum());
				}
			}else { 
				pstmt.setInt(1, inVO.getPageSize());
				pstmt.setInt(2, inVO.getPageNum());
				pstmt.setInt(3, inVO.getPageSize());
				pstmt.setInt(4, inVO.getPageSize());
				pstmt.setInt(5, inVO.getPageNum());
			}
			
			// 4. SQL 실행
			rs = pstmt.executeQuery();

			// 5. return받은 ResultSet에서 DB에서 전달된 데이터 추출
			while(rs.next()) {
				BoardVO outVO = new BoardVO();
				outVO.setSeq(rs.getInt("seq"));
				outVO.setNo(rs.getInt("num"));
				outVO.setTitle(rs.getString("title"));
				outVO.setReadCnt(rs.getInt("read_cnt"));
				outVO.setModDt(rs.getString("mod_dt"));
				outVO.setModId(rs.getString("mod_id"));
				
				boardList.add(outVO);
			}

		}catch (SQLException e) {
			LOG.debug("SQLException: " + e.getMessage());
			e.printStackTrace();
			// 6. 자원 반납
		}finally {
			// rs 자원반납
			JDBCUtil.close(rs);
			// pstmt 자원반납
			JDBCUtil.close(pstmt);
			// conn 자원반납
			JDBCUtil.close(conn);
		}
		
		return boardList;
	}
	
	// INSERT
	@Override
	public int doSave(BoardVO dto) {
		int flag = 0;
		Connection conn = null; // DB연결 정보
		PreparedStatement pstmt = null; // SQL + data
		StringBuilder sb = new StringBuilder(100);
		
		// 1. DB 연결
		conn = pConnection.connect();
		
		// 2. SQL 작성
		sb.append(" INSERT INTO board ( \n");
		sb.append("     seq,            \n");
		sb.append("     title,          \n");
		sb.append("     contents,       \n");
		sb.append("     read_cnt,       \n");
		sb.append("     reg_id,         \n");
		sb.append("     mod_id          \n");
		sb.append(" ) VALUES (          \n");
		sb.append("     ?,              \n");
		sb.append("     ?,              \n");
		sb.append("     ?,              \n");
		sb.append("     ?,              \n");
		sb.append("     ?,              \n");
		sb.append("     ?               \n");
		sb.append(" )                   \n");
		LOG.debug("query: \n" + sb.toString());
		LOG.debug("param: " + dto.toString());
		
		try {
			// 3. param 전달
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, dto.getSeq());
			pstmt.setString(2, dto.getTitle());
			pstmt.setString(3, dto.getContents());
			pstmt.setInt(4, 0); // read_cnt:조회수 초기값 0
			pstmt.setString(5, dto.getRegId());
			pstmt.setString(6, dto.getModId());
			
			// 4. SQL 실행
			flag = pstmt.executeUpdate();
			
			// 5. SQL실행결과
			LOG.debug("flag: " + flag);
			
		}catch (SQLException e) {
			LOG.debug("SQLException: " + e.getMessage());
			e.printStackTrace();
			// 6. 자원반납
		}finally {
			// pstmt 자원반납
			JDBCUtil.close(pstmt);
			// conn 자원반납
			JDBCUtil.close(conn);
		}
		
		return flag;
	}

	// DELETE
	@Override
	public int doDelete(BoardVO dto) {
		int flag = 0;
		
		Connection conn = null; // DB연결 정보
		PreparedStatement pstmt = null; // SQL + data
		StringBuilder sb = new StringBuilder(100);
		
		// 1. DB 연결
		conn = pConnection.connect();
		
		// 2. SQL 작성
		sb.append(" DELETE FROM board \n");
		sb.append(" WHERE seq = ?	  \n");
		
		LOG.debug("query: \n" + sb.toString());
		LOG.debug("param: " + dto.toString());
		
		try {
			// 3. param 전달
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, dto.getSeq());
			
			// 4. SQL 실행
			flag = pstmt.executeUpdate();
			
			// 5. SQL 실행결과
			LOG.debug("flag: " + flag);
			
		}catch (SQLException e) {
			LOG.debug("SQLException: " + e.getMessage());
			e.printStackTrace();
			// 6. 자원반납
		}finally {
			// pstmt 자원반납
			JDBCUtil.close(pstmt);
			// conn 자원반납
			JDBCUtil.close(conn);
		}
		
		return flag;
	}

	// 단건조회
	@Override
	public BoardVO doSelectOne(BoardVO dto) {
		BoardVO outVO = null; // return
		Connection conn = null; // DB연결정보
		PreparedStatement pstmt = null; // SQL + data
		ResultSet rs = null; // DB에서 전달된 정보 추출
		StringBuilder sb = new StringBuilder(100);
		
		// 1. DB 연결
		conn = pConnection.connect();
		
		// 2. SQL 작성
		sb.append(" SELECT                                                 \n");
		sb.append("     seq,                                               \n");
		sb.append("     title,                                             \n");
		sb.append("     contents,                                          \n");
		sb.append("     read_cnt,                                          \n");
		sb.append("     TO_CHAR(reg_dt,'YYYY/DD/MM HH24:MI:SS') AS reg_dt, \n");
		sb.append("     reg_id,                                            \n");
		sb.append("     TO_CHAR(mod_dt,'YYYY/DD/MM HH24:MI:SS') AS mod_dt, \n");
		sb.append("     mod_id                                             \n");
		sb.append(" FROM board                                             \n");
		sb.append(" WHERE seq = ?                                          \n");
		
		LOG.debug("query: \n" + sb.toString());
		LOG.debug("param: " + dto.toString());
		
		try {
			// 3. param전달
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, dto.getSeq());
			
			// 4. SQL 실행 : ResultSet
			rs = pstmt.executeQuery();
			
			// 5. return받은 ResultSet에서 DB에서 전달된 데이터 추출
			if (rs.next()) {
				outVO = new BoardVO(); // return
				outVO.setSeq(rs.getInt("seq"));
				outVO.setTitle(rs.getString("title"));
				outVO.setContents(rs.getString("contents"));
				outVO.setReadCnt(rs.getInt("read_cnt"));
				outVO.setRegDt(rs.getString("reg_dt"));
				outVO.setRegId(rs.getString("reg_id"));
				outVO.setModDt(rs.getString("mod_dt"));
				outVO.setModId(rs.getString("mod_id"));
			}
			LOG.debug("outVO: " + outVO);
			
		}catch (SQLException e) {
			LOG.debug("SQLException: " + e.getMessage());
			e.printStackTrace();
			// 6. 자원 반납
		}finally {
			// rs 자원반납
			JDBCUtil.close(rs);
			// pstmt 자원반납
			JDBCUtil.close(pstmt);
			// conn 자원반납
			JDBCUtil.close(conn);
		}
		
		return outVO;
	}

	// UPDATE
	@Override
	public int doUpdate(BoardVO dto) {
		int flag = 0;
		
		Connection conn = null; // DB정보
		PreparedStatement pstmt = null; // SQL + data
		StringBuilder sb = new StringBuilder(100);
		
		// 1. DB 연결
		conn = pConnection.connect();
		
		// 2. SQL 작성
		sb.append(" UPDATE board          \n");
		sb.append(" SET title = ?,        \n");
		sb.append("     contents = ?, 	  \n");
		sb.append("     mod_dt = SYSDATE, \n");
		sb.append("     mod_id = ?        \n");
		sb.append(" WHERE seq = ?         \n");
		
		LOG.debug("query: \n" + sb.toString());
		LOG.debug("param: " + dto.toString());
		
		try {
			// 3. param전달
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getContents());
			pstmt.setString(3, dto.getModId());
			pstmt.setInt(4, dto.getSeq());
			
			// 4. SQL 실행
			flag = pstmt.executeUpdate();
			
			// 5. SQL 실행결과
			LOG.debug("flag: " + flag);
			
		}catch (SQLException e) {
			LOG.debug("SQLException: " + e.getMessage());
			e.printStackTrace();
			// 6. 자원반납
		}finally {
			// pstmt 자원 반납
			JDBCUtil.close(pstmt);
			
			// conn 자원 반납
			JDBCUtil.close(conn);
		}
		
		return flag;
	}

}
























