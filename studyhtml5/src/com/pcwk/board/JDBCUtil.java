package com.pcwk.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.log4j.Logger;

public class JDBCUtil {
	
	final static Logger LOG = Logger.getLogger(JDBCUtil.class);
	
	/**
	 * Connection 자원 반납
	 * @param conn
	 */
	public static void close(Connection conn) {
		if (null != conn) {
			try {
				LOG.debug("Connection자원 반납");
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	
	/**
	 * ResultSet 자원 반납
	 * @param rs
	 */
	public static void close(ResultSet rs) {
		if(null != rs) {
			try {
				LOG.debug("ResultSet자원 반납");
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	/**
	 * PreparedStatement 자원 반납
	 * @param pstmt
	 */
	public static void close(PreparedStatement pstmt) {
		if (null != pstmt) {
			try {
				LOG.debug("PreparedStatement자원 반납");
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
}
