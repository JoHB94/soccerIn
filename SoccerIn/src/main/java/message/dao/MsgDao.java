package message.dao;

import java.util.ArrayList;

import message.model.Message;

public interface MsgDao {

	void insertMsg(Message m);

	ArrayList<Message> checkScoutMsg(String id);

	ArrayList<Message> checkApplyMsg(String t_name);

	void updateStateMsg(String id, String pwd);

	void deleteMsg(String id, String pwd);
	
	
}
