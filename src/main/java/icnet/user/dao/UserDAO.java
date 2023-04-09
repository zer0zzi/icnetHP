package icnet.user.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

import icnet.common.dao.AbstractDAO;

@Repository("userDAO")
public class UserDAO extends AbstractDAO{

	public int selectUserID(Map<String, Object> map) throws Exception{
		Map<String, Object> resultMap = (Map<String, Object>)selectOne("user.selectUserID", map);// TODO Auto-generated method stub
		
		int result = Integer.valueOf(String.valueOf(resultMap.get("RESULT")));
		
		return result;
	}

}
