package message.model;

import java.sql.Date;

public class Message {

	private int msg_num;
	private String t_name;
	private String id;
	private int state;
	private int direction;

	public Message(int msg_num, String id, String t_name, int state, int direction) {
		super();
		this.msg_num = msg_num;
		this.t_name = t_name;
		this.id = id;
		this.state = state;
		this.direction = direction;
	}

	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getMsg_num() {
		return msg_num;
	}

	public void setMsg_num(int msg_num) {
		this.msg_num = msg_num;
	}

	public String getT_name() {
		return t_name;
	}

	public void setT_name(String t_name) {
		this.t_name = t_name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public int getDirection() {
		return direction;
	}

	public void setDirection(int direction) {
		this.direction = direction;
	}

	@Override
	public String toString() {
		return "Message [msg_num=" + msg_num + ", t_name=" + t_name + ", id=" + id + ", state=" + state + ", direction="
				+ direction + "]";
	}

}
