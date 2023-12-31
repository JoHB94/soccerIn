package player.dao;

import java.util.ArrayList;

import player.model.Player;

public interface PlayerDao {
	
	boolean checkDuplicatedId(String id);
	
	void insertPlayer(Player p);
	
	void deletePlayer(String id, String pwd);
	
	ArrayList<Player> selectAllPlayer();
	
	Player selectPlayer(String id);
	
	void updatePlayer(Player p);
	
	void updatePlayerMarket(String id, String onMarket);
	
	Player login(String id, String pwd);
}
