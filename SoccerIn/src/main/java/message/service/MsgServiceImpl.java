package message.service;

import java.util.ArrayList;

import message.dao.MsgDao;
import message.dao.MsgDaoImpl;
import message.model.Message;

public class MsgServiceImpl implements MsgService{
	
	private MsgDao dao;
	
	public MsgServiceImpl() {
		this.dao = new MsgDaoImpl();
	}

	@Override
	public void doScout(Message m) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doApply(Message m) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ArrayList<Message> checkScout(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Message> checkApply(String t_name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void acceptMsg(String id, String t_name, String position) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void rejectMsg(String id, String t_name) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void exitTeam(String id) {
		// TODO Auto-generated method stub
		
	}
}
