package jdbc.dbconn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConn {
	private static DBConn db = new DBConn();
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";

	private DBConn() {
	}

	public static DBConn getInstance() {
		return db;
	}

	public Connection getConnect() {//db�ý��ۿ� ����.
		Connection conn = null;
		try {
			Class.forName(driver);//jdbc ����̹� �ε�
			conn = DriverManager.getConnection(url, "hr", "hr");//db������ �ּ�, ����, ��й�ȣ�� �̿��ؼ� ���Ǽ���
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
}
