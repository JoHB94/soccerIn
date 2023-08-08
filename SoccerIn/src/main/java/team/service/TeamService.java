package team.service;

import java.util.ArrayList;

import team.model.Team;

public interface TeamService {
	
	boolean checkDuplicateName(String t_name);

	void teamCreate(Team t);

	void teamDelete(String t_name,String t_owner);

	ArrayList<Team> teamList();

	Team teamInfo(String id);

	void teamEdit(Team t);

	void teamMarket(int onMarket);
	
	String checkSign(String id);
	
	String getOwner(String t_name);
	
}
