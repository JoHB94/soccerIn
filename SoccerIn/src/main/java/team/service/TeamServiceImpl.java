package team.service;

import java.util.ArrayList;

import sign.dao.SignDao;
import sign.dao.SignDaoImpl;
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
		 dao.insertTeam(t);;
	}

	@Override
	public void teamDelete(String t_name) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ArrayList<Team> teamList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Team teamInfo(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void teamEdit(Team t) {
		// TODO Auto-generated method stub
		
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
}
