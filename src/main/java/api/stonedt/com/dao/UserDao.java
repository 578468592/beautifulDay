package api.stonedt.com.dao;

import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.Mapping;

import api.stonedt.com.entity.user;

@Repository
public interface UserDao {
	
	/*UserEntity conUserLogin(UserEntity user);
    //更改密码
	//1.确认账号
	public UserEntity findUsersByaccount(String account);
	//2.修改密码*/
	
	public int update(user user);
	//1.确认账号
	public user findUserByaccount(user user);
	
}
