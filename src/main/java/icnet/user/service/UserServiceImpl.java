package icnet.user.service;

import java.util.Map;

import javax.annotation.Resource;

import icnet.user.dao.UserDAO;

public class UserServiceImpl implements UserService {
	
	@Resource(name="userDAO")
	private UserDAO userDAO;
	
	@Override
	public int selectUserID(Map<String, Object> map) throws Exception {
		return userDAO.selectUserID(map);
	}

	@Override
	public void insertUserData(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
	}
}
