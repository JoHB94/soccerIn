package team.service;

import java.util.ArrayList;

import sign.dao.SignDao;
import sign.dao.SignDaoImpl;
import sign.model.Sign;
import team.dao.TeamDao;
import team.dao.TeamDaoImpl;
import team.model.Team;

public class TeamServiceImpl implements  TeamService{
	
	private TeamDao dao;
	private SignDao s_dao;
	
	public TeamServiceImpl() {
		this.dao = new TeamDaoImpl();
		this.s_dao = new SignDaoImpl();
	}

	@Override
	public void teamCreate(Team t) {
		// TODO Auto-generated method stub
		 /*팀 가입정보를 받아와 팀을 창설하고, sign테이블의 가입자의 정보와 팀의정보를 입력한다.*/
		dao.insertTeam(t);
		 
		String id = t.getT_owner();
		String t_name = t.getT_name();
		Sign s = new Sign(0, id, t_name);
		
		s_dao.insertSign(s);
	}

	@Override
	public void teamDelete(String t_name,String t_owner) {
		// TODO Auto-generated method stub
		dao.deleteTeam(t_name, t_owner);
		
	}

	@Override
	public ArrayList<Team> teamList() {
		// TODO Auto-generated method stub
		return dao.selectAllTeam();
	}

	@Override
	public Team teamInfo(String id) {
		// TODO Auto-generated method stub
		return dao.selectTeam(id);
	}

	@Override
	public void teamEdit(Team t) {
		// TODO Auto-generated method stub
		dao.updateTeam(t);
	}

	@Override
	public void teamMarket(int onMarket) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String checkSign(String id) {
		// TODO Auto-generated method stub
		return s_dao.checkSign(id);
	}

	@Override
	public boolean checkDuplicateName(String t_name) {
		// TODO Auto-generated method stub
		return dao.checkDuplicatedName(t_name);
	}

	@Override
	public String getOwner(String t_name) {
		// TODO Auto-generated method stub
		return dao.getOwner(t_name);
	}
}
