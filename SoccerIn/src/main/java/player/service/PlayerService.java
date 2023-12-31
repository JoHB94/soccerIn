package player.service;

import java.util.ArrayList;

import player.model.Player;

public interface PlayerService {
	
	boolean checkId(String id);
	
	void playerJoin(Player p);

	void playerExit(String id, String pwd);

	ArrayList<Player> playerList();

	Player playerInfo(String id);

	void playerEdit(Player p);

	void playerMarket(int onMarket);

	Player login(String id, String pwd);
}
