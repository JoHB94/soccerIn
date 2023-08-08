package message.service;

import java.util.ArrayList;

import message.dao.MsgDao;
import message.dao.MsgDaoImpl;
import message.model.Message;
import sign.dao.SignDao;
import sign.dao.SignDaoImpl;
import sign.model.Sign;

public class MsgServiceImpl implements MsgService{
	
	private MsgDao dao;
	private SignDao s_dao;
	
	public MsgServiceImpl() {
		this.dao = new MsgDaoImpl();
		this.s_dao = new SignDaoImpl();
	}

	@Override
	public void doScout(Message m) {
		// TODO Auto-generated method stub
		m.setDirection(0);
		dao.insertMsg(m);
	}

	@Override
	public void doApply(Message m) {
		// TODO Auto-generated method stub
		m.setDirection(1);
		dao.insertMsg(m);
	}

	@Override
	public ArrayList<Message> checkScout(String id) {
		// TODO Auto-generated method stub
		return dao.checkScoutMsg(id);
	}

	@Override
	public ArrayList<Message> checkApply(String t_name) {
		// TODO Auto-generated method stub
		return dao.checkApplyMsg(t_name);
	}

	@Override
	public void acceptMsg(String id, String t_name) {
		// TODO Auto-generated method stub
		/*메세지를 수락하는 경우, message의 state를 1로 바꾼다
		 *sing테이블에 새로이 등록한다.*/
		Sign s = new Sign();
		s.setId(id);
		s.setT_name(t_name);
		dao.updateStateMsg(id, t_name);
		s_dao.insertSign(s);
	}

	@Override
	public void rejectMsg(String id, String t_name) {
		/*메세지를 거절하는 경우 message테이블의 기록을 삭제한다.*/
		// TODO Auto-generated method stub
		dao.deleteMsg(id, t_name);
		
	}

	@Override
	public void exitTeam(String id) {
		// TODO Auto-generated method stub
		/*팀 탈퇴*/
		s_dao.deleteSign(id);
	}
}
