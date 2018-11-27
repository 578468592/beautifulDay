package api.stonedt.com.service;

import api.stonedt.com.entity.user;

public interface UserService {

/*	user conUserLogin(user user);*/
	//更新密码
     int update(user user);
	
     user findUserByaccount(user user);
	
  
}
