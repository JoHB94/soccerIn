package message.dao;

import message.model.Message;

public interface MsgDao {

	void insertMsg(Message m);

	Message checkScoutMsg(String id);

	Message checkApplyMsg(String id);

	void updateStateMsg(Message m);

	void deleteMsg(String id, String pwd);
	
	
}
