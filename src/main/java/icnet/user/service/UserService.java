package icnet.user.service;

import java.util.Map;

public interface UserService {

	void insertUserData(Map<String, Object> map) throws Exception;

	int selectUserID(Map<String, Object> map) throws Exception;

}
