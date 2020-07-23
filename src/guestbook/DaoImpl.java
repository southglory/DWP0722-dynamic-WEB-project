package guestbook;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import jdbc.dbconn.DBConn;

public class DaoImpl implements Dao {
	private DBConn db;
	
	public DaoImpl(){
		db = DBConn.getInstance();
	}	

	@Override
	public void insert(Article a) {
		// TODO Auto-generated method stub
		String sql = "insert into guestbook values(seq_guestbook.nextval,?,?,sysdate,?)";
		Connection conn = db.getConnect();
		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, a.getWriter());
			pstm.setString(2, a.getPwd());
			pstm.setString(3, a.getContent());
			int rows = pstm.executeUpdate();	
			System.out.println(rows + " 줄이 추가되었습니다. ");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	


	@Override
	public Article select(int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Article> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Article a) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int num) {
		// TODO Auto-generated method stub

	}

}
