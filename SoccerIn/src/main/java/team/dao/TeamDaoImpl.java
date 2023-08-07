package team.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.DBConnect;
import team.model.Team;

public class TeamDaoImpl implements TeamDao {
	
	private DBConnect db;

	public TeamDaoImpl() {
		db = DBConnect.getInstance();
	}
	
	@Override
	public boolean checkDuplicatedName(String t_name) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		
		String sql = "select 1 from team where t_name = ?";
		/*쿼리조회값이 있으면 true*/
		try {
			conn = db.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, t_name);
			rs = pstmt.executeQuery();
			if(!rs.next()) {
				/*rs.next가 flase라면 중복데이터가 없다는 뜻*/
				return true;
			}
		} catch(SQLException e) {
			e.printStackTrace();
			
		} finally {
			try {
				rs.close();
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
	public void insertTeam(Team t) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "insert into team values(seq_team.nextval,?,?,?,?,?,? )";
		
		String t_owner = t.getT_owner();
		String t_name = t.getT_name();
		String t_addr = t.getT_addr();
		String t_intro = t.getT_intro();
		String t_profile = t.getT_profile();
		int onMarket = t.getOn_market();
		
		try {
			conn = db.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, t_owner);
			pstmt.setString(2, t_name);
			pstmt.setString(3, t_addr);
			pstmt.setString(4, t_intro);
			pstmt.setString(5, t_profile);
			pstmt.setInt(6, onMarket);
			pstmt.executeUpdate();
			
			
		} catch(SQLException e) {
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
	public void deleteTeam(Team t) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		
		try {
			conn = db.getConnection();
			
			pstmt = conn.prepareStatement(sql);
		} catch(SQLException e) {
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
	public ArrayList<Team> selectAllTeam() {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Team> list = new ArrayList<Team>();
		String sql = "select * from team where on_market = 1";
		
		try {
			conn = db.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				list.add(new Team(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7)));
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}

	@Override
	public Team selectTeam(String t_name) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Team t =null;
		String sql = "select * from team where on_market=1 and t_name =?";
		
		try {
			conn = db.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, t_name);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				t = new Team(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7));
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return t;
	}

	@Override
	public void updateTeam(Team t) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		
		try {
			conn = db.getConnection();
			
			pstmt = conn.prepareStatement(sql);
		} catch(SQLException e) {
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
	public void updateTeamMarket() {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		
		try {
			conn = db.getConnection();
			
			pstmt = conn.prepareStatement(sql);
		} catch(SQLException e) {
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

	
	
	
}
