package player.service;

import java.util.ArrayList;

import player.dao.PlayerDao;
import player.dao.PlayerDaoImpl;
import player.model.Player;

public class PlayerServiceImpl implements PlayerService{
	
	private PlayerDao dao;
	
	public PlayerServiceImpl() {
		this.dao = new PlayerDaoImpl();
	}
	
	@Override
	public void playerJoin(Player p) {
		// TODO Auto-generated method stub
		dao.insertPlayer(p);
	}

	@Override
	public void playerExit(String id, String pwd) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ArrayList<Player> playerList() {
		// TODO Auto-generated method stub
		return dao.selectAllPlayer();
	}

	@Override
	public Player playerInfo(String id) {
		// TODO Auto-generated method stub
		return dao.selectPlayer(id);
	}

	@Override
	public void playerEdit(Player p) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void playerMarket(int onMarket) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Player login(String id, String pwd) {
		// TODO Auto-generated method stub
		return dao.login(id, pwd);
	}

	@Override
	public boolean checkId(String id) {
		// TODO Auto-generated method stub
		return dao.checkDuplicatedId(id);
	}

}
