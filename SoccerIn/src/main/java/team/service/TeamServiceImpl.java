package team.service;

import java.util.ArrayList;

import team.dao.TeamDao;
import team.dao.TeamDaoImpl;
import team.model.Team;

public class TeamServiceImpl implements  TeamService{
	
	private TeamDao dao;
	
	public TeamServiceImpl() {
		this.dao = new TeamDaoImpl();
	}

	@Override
	public boolean teamCreate(Team t) {
		// TODO Auto-generated method stub
		return false;
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
}
