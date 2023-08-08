package sign.model;

public class Sign {

	private int sign_num;
	private String id;
	private String t_name;

	public Sign(int sign_num, String id, String t_name) {
		super();
		this.sign_num = sign_num;
		this.id = id;
		this.t_name = t_name;
	}

	public Sign() {
		// TODO Auto-generated constructor stub
	}

	public int getSign_num() {
		return sign_num;
	}

	public void setSign_num(int sign_num) {
		this.sign_num = sign_num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}


	public String getT_name() {
		return t_name;
	}

	public void setT_name(String t_name) {
		this.t_name = t_name;
	}

	@Override
	public String toString() {
		return "sign [sign_num=" + sign_num + ", id=" + id + ", t_name=" + t_name + "]";
	}

}
