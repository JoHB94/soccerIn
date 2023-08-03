package team.model;

public class Team {

	private int t_num;
	private String t_owner;
	private String t_name;
	private String t_addr;
	private String t_intro;
	private String t_profile;
	private int on_market = 0;

	public Team() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Team(int t_num, String t_owner, String t_name, String t_addr, String t_intro, String t_profile,
			int on_market) {
		super();
		this.t_num = t_num;
		this.t_owner = t_owner;
		this.t_name = t_name;
		this.t_addr = t_addr;
		this.t_intro = t_intro;
		this.t_profile = t_profile;
		this.on_market = on_market;
	}

	public int getT_num() {
		return t_num;
	}

	public void setT_num(int t_num) {
		this.t_num = t_num;
	}

	public String getT_owner() {
		return t_owner;
	}

	public void setT_owner(String t_owner) {
		this.t_owner = t_owner;
	}

	public String getT_name() {
		return t_name;
	}

	public void setT_name(String t_name) {
		this.t_name = t_name;
	}

	public String getT_addr() {
		return t_addr;
	}

	public void setT_addr(String t_addr) {
		this.t_addr = t_addr;
	}

	public String getT_intro() {
		return t_intro;
	}

	public void setT_intro(String t_intro) {
		this.t_intro = t_intro;
	}

	public String getT_profile() {
		return t_profile;
	}

	public void setT_profile(String t_profile) {
		this.t_profile = t_profile;
	}

	public int getOn_market() {
		return on_market;
	}

	public void setOn_market(int on_market) {
		this.on_market = on_market;
	}

	@Override
	public String toString() {
		return "Team [t_num=" + t_num + ", t_owner=" + t_owner + ", t_name=" + t_name + ", t_addr=" + t_addr
				+ ", t_intro=" + t_intro + ", t_profile=" + t_profile + ", on_market=" + on_market + "]";
	}

}
