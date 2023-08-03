package player.model;

import java.sql.Date;

public class Player {

	private int p_num;
	private String id;
	private String pwd;
	private String p_name;
	private String p_email;
	private String p_addr;
	private Date birth;
	private int height;
	private int weight;
	private int speed;
	private String position;
	private String p_intro;
	private String p_profile;
	private int on_market = 0;
	
	public Player() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Player(int p_num, String id, String pwd, String p_name, String p_email, String p_addr, Date birth,
			int height, int weight, int speed, String position, String p_intro, String p_profile, int on_market) {
		super();
		this.p_num = p_num;
		this.id = id;
		this.pwd = pwd;
		this.p_name = p_name;
		this.p_email = p_email;
		this.p_addr = p_addr;
		this.birth = birth;
		this.height = height;
		this.weight = weight;
		this.speed = speed;
		this.position = position;
		this.p_intro = p_intro;
		this.p_profile = p_profile;
		this.on_market = on_market;
	}

	public int getP_num() {
		return p_num;
	}

	public void setP_num(int p_num) {
		this.p_num = p_num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_email() {
		return p_email;
	}

	public void setP_email(String p_email) {
		this.p_email = p_email;
	}

	public String getP_addr() {
		return p_addr;
	}

	public void setP_addr(String p_addr) {
		this.p_addr = p_addr;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public int getSpeed() {
		return speed;
	}

	public void setSpeed(int speed) {
		this.speed = speed;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getP_intro() {
		return p_intro;
	}

	public void setP_intro(String p_intro) {
		this.p_intro = p_intro;
	}

	public String getP_profile() {
		return p_profile;
	}

	public void setP_profile(String p_profile) {
		this.p_profile = p_profile;
	}

	public int getOn_market() {
		return on_market;
	}

	public void setOn_market(int on_market) {
		this.on_market = on_market;
	}

	@Override
	public String toString() {
		return "Player [p_num=" + p_num + ", id=" + id + ", pwd=" + pwd + ", p_name=" + p_name + ", p_email=" + p_email
				+ ", p_addr=" + p_addr + ", birth=" + birth + ", height=" + height + ", weight=" + weight + ", speed="
				+ speed + ", position=" + position + ", p_intro=" + p_intro + ", p_profile=" + p_profile
				+ ", on_market=" + on_market + "]";
	}
	
	
	
	



}
