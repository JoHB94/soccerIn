package team.dao;

import java.util.ArrayList;

import team.model.Team;

public interface TeamDao {
	
	boolean checkDuplicatedName(String t_name);

	void insertTeam(Team t);

	void deleteTeam(Team t);

	ArrayList<Team> selectAllTeam();

	Team selectTeam(String t_name);

	void updateTeam(Team t);

	void updateTeamMarket();

}
