package com.pcwk.board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.apache.log4j.Logger;

public class PConnection {
	
	final Logger LOG = Logger.getLogger(getClass());
	
	public Connection connect() {

		Connection connection = null; // DB�뿰寃� �젙蹂�
		// jdbc:oracle:thin:@IP:PORT:�쟾�뿭DB紐낆묶
		String dbURL = "jdbc:oracle:thin:@192.168.3.101:1521:xe"; // URL
		String dbUSER = "scott"; // ID
		String dbPASS = "pcwk"; // 鍮꾨쾲

		// jdbc oracle driver load
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// db�뿰寃�
			connection = DriverManager.getConnection(dbURL, dbUSER, dbPASS);
			LOG.debug("connection: " + connection);

		} catch (ClassNotFoundException e) {
			LOG.debug("ClassNotFoundException: " + e.getMessage());
			e.printStackTrace();
		} catch (SQLException e) {
			LOG.debug("SQLException: " + e.getMessage());
			e.printStackTrace();
		}

		return connection;
	}
	
}
