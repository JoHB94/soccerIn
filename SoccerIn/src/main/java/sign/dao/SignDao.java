package sign.dao;

import sign.model.Sign;

public interface SignDao {

	void insertSign(Sign s);

	void deleteSign(String id);
	
	String checkSign(String id);
}
