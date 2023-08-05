package player.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;

import conn.DBConnect;
import player.model.Player;

public class PlayerDaoImpl implements PlayerDao {

	private DBConnect db;

	public PlayerDaoImpl() {
		db = DBConnect.getInstance();
	}

	@Override
	/*
	 * 회원가입시 id가 중복인지 return true이면 중복아이디 없음, 회원가입 가능 flase이면 중복아이디 존재, 회원가입 불가
	 */
	public boolean checkDuplicatedId(String id) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select 1 from player where id =?";

		try {
			conn = db.getConnection();

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if (!rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return false;
	}

	@Override
	public void insertPlayer(Player p) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "insert into player values(seq_player.nextval, ?,?,?,?,?,?,?,?,?,?,?,?,?)";

		try {
			System.out.println("dao에서 insert 호출: " + p);
			conn = db.getConnection();
			/* 필수 입력 정보 */
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p.getId());
			pstmt.setString(2, p.getPwd());
			pstmt.setString(3, p.getP_name());
			pstmt.setString(4, p.getP_email());
			pstmt.setString(5, p.getP_addr());
			/* 선택 입력 정보 */
			if (p.getBirth() == null) {
				pstmt.setNull(6, Types.DATE);
			} else {
				pstmt.setDate(6, p.getBirth());
			}
			if (p.getHeight() == 0) {
				pstmt.setNull(7, Types.NUMERIC);
			} else {
				pstmt.setInt(7, p.getHeight());
			}
			if (p.getWeight() == 0) {
				pstmt.setNull(8, Types.NUMERIC);
			} else {
				pstmt.setInt(8, p.getWeight());
			}
			
			/*speed와 position은 셀렉트 값으로 null일 수가 없다.*/
			pstmt.setInt(9, p.getSpeed());
			pstmt.setString(10, p.getPosition());
			
			if (p.getP_intro() == null) {
				pstmt.setNull(11, Types.VARCHAR);
			} else {
				pstmt.setString(11, p.getP_intro());
			}
			if (p.getP_profile() == null) {
				pstmt.setNull(12, Types.VARCHAR);
			} else {
				pstmt.setString(12, p.getP_profile());
			}
			/* on_market은 필수정보 default : 0 */
			pstmt.setInt(13, p.getOn_market());
			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	@Override
	public void deletePlayer(String id, String pwd) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "delete from team where id = ? and pwd= ?";

		try {
			conn = db.getConnection();

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	@Override
	public ArrayList<Player> selectAllPlayer() {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Player> p = new ArrayList<Player>();
		String sql = "select * from player where on_market = 1";

		try {
			conn = db.getConnection();

			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			int p_num = rs.getInt(1);
			String id = rs.getString(2);
			String pwd= rs.getString(3);
			String p_name = rs.getString(4);
			String p_email = rs.getString(5);
			String p_addr = rs.getString(6);
			Date birth = rs.getDate(7);
			int height = rs.getInt(8);
			int weight = rs.getInt(9);;
			int speed =rs.getInt(10);;
			String position = rs.getString(11);
			String p_intro = rs.getString(12);
			String p_profile = rs.getString(13);
			int on_market = rs.getInt(14);
			
			while (rs.next()) {
				p.add(new Player(p_num, id, pwd, p_name, p_email, p_addr, 
						birth, height, weight, speed, position, 
						p_intro, p_profile, on_market));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return p;
	}

	@Override
	public Player selectPlayer(String id) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Player p = null;
		String sql = "select * from player where on_market = 1";
		
		try {
			conn = db.getConnection();

			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				int p_num = rs.getInt(1);
				String p_id = rs.getString(2);
				String pwd= rs.getString(3);
				String p_name = rs.getString(4);
				String p_email = rs.getString(5);
				String p_addr = rs.getString(6);
				Date birth = rs.getDate(7);
				int height = rs.getInt(8);
				int weight = rs.getInt(9);;
				int speed =rs.getInt(10);;
				String position = rs.getString(11);
				String p_intro = rs.getString(12);
				String p_profile = rs.getString(13);
				int on_market = rs.getInt(14);
				
				p = new Player(p_num, p_id, pwd, p_name, p_email, p_addr, 
						birth, height, weight, speed, position, 
						p_intro, p_profile, on_market);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return p;
	}

	@Override
	public void updatePlayer(Player p) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "update palyer set pwd = ?, p_email = ?, p_addr = ?, "
				+ "birth = ?, height = ?, weight = ?, speed = ?, "
				+ "position = ?, p_intro = ?, p_profile = ? where id = ?";

		try {
			conn = db.getConnection();

			pstmt = conn.prepareStatement(sql);
			/*필수 입력 정보*/
			pstmt.setString(1, p.getPwd());
			pstmt.setString(2, p.getP_email());
			pstmt.setString(3, p.getP_addr());
			
			/*선책 입력 정보*/
			if (p.getBirth() == null) {
				pstmt.setNull(4, Types.DATE);
			} else {
				pstmt.setDate(5, p.getBirth());
			}
			if (p.getHeight() == 0) {
				pstmt.setNull(5, Types.NUMERIC);
			} else {
				pstmt.setInt(5, p.getHeight());
			}
			if (p.getWeight() == 0) {
				pstmt.setNull(6, Types.NUMERIC);
			} else {
				pstmt.setInt(6, p.getWeight());
			}
			if (p.getSpeed() == 0) {
				pstmt.setNull(7, Types.NUMERIC);
			} else {
				pstmt.setInt(7, p.getSpeed());
			}
			if (p.getPosition() == null) {
				pstmt.setNull(8, Types.CHAR);
			} else {
				pstmt.setString(8, p.getPosition());
			}
			if (p.getP_intro() == null) {
				pstmt.setNull(9, Types.VARCHAR);
			} else {
				pstmt.setString(9, p.getP_intro());
			}
			if (p.getP_profile() == null) {
				pstmt.setNull(10, Types.VARCHAR);
			} else {
				pstmt.setString(10, p.getP_profile());
			}
			
			pstmt.setString(11, p.getId());
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	@Override
	public void updatePlayerMarket(String id, String onMarket) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "update player set on_market = ? where id = ?";

		try {
			conn = db.getConnection();

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, onMarket);
			pstmt.setString(2, id);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	@Override
	public Player login(String id, String pwd) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Player p =null;
		String sql = "select * from player where id = ? and pwd = ?";

		try {
			conn = db.getConnection();

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				int p_num = rs.getInt(1);
				String p_id = rs.getString(2);
				String p_pwd= rs.getString(3);
				String p_name = rs.getString(4);
				String p_email = rs.getString(5);
				String p_addr = rs.getString(6);
				Date birth = rs.getDate(7);
				int height = rs.getInt(8);
				int weight = rs.getInt(9);;
				int speed =rs.getInt(10);;
				String position = rs.getString(11);
				String p_intro = rs.getString(12);
				String p_profile = rs.getString(13);
				int on_market = rs.getInt(14);
				
				p = new Player(p_num, p_id, p_pwd, p_name, p_email, p_addr, 
						birth, height, weight, speed, position, 
						p_intro, p_profile, on_market);
				
				System.out.println("dao에서 p값: " + p);
			} else {
				return null;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return p;
	}

}
