package api.stonedt.com.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import api.stonedt.com.dao.UserDao;
import api.stonedt.com.entity.user;
import api.stonedt.com.service.UserService;
@Service("UserService")
public class UserServiceImpl implements UserService  {

	
	@Autowired
	private UserDao userDao;
	@Override
//	public user conUserLogin(user user) {
//		// TODO Auto-generated method stub
//		return userDao.conUserLogin(user);
//	}
//	@Override
	public int update(user user) {
		
		   
		return userDao.update(user);
	}
	
	public user findUserByaccount(user user){
		return userDao.findUserByaccount(user);
	}

}
