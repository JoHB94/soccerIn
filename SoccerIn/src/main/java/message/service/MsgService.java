package message.service;

import java.util.ArrayList;

import message.model.Message;

public interface MsgService {
	
	void doScout(Message m);
	
	void doApply(Message m);
	
	ArrayList<Message> checkScout(String id);
	
	ArrayList<Message> checkApply(String t_name);
	
	void acceptMsg(String id, String t_name);
	
	void rejectMsg(String id, String t_name);
	
	void exitTeam(String id);
}
