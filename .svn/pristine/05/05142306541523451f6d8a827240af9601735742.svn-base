package api.stonedt.com.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import api.stonedt.com.dao.AdminDao;
import api.stonedt.com.dao.UserDao;
import api.stonedt.com.entity.UserEntity;
import api.stonedt.com.service.UserService;
@Service("UserService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	@Override
	public UserEntity conUserLogin(UserEntity user) {
		// TODO Auto-generated method stub
		return userDao.conUserLogin(user);
	}
	@Override
	public int update(UserEntity user) {
		
		   
		return userDao.update(user);
	}
	

}
