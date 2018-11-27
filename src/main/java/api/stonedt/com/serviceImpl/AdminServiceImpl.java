package api.stonedt.com.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import api.stonedt.com.dao.AdminDao;
import api.stonedt.com.entity.Admin;
import api.stonedt.com.service.AdminService;
@Service("AdminService")
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDao adminDao;

	@Override
	public Admin getAdminInfo(Admin admin) {
		return adminDao.getAdminInfo(admin);
	}


}
