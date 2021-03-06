package api.stonedt.com.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import api.stonedt.com.dao.DoctorinfoDao;
import api.stonedt.com.entity.Doctorinfo;
import api.stonedt.com.entity.Hospitalnews;
import api.stonedt.com.service.DoctorinfoService;
@Service
public class DoctorinfoServiceImpl implements DoctorinfoService {
   @Autowired
   private DoctorinfoDao DoctorinfoDao;
	@Override
	public List<Doctorinfo> getallleader(int host) {
		// TODO Auto-generated method stub
		return DoctorinfoDao.getallleader(host);
	}

	@Override
	public List<Doctorinfo> getallspecialist(int host) {
		// TODO Auto-generated method stub
		return DoctorinfoDao.getallspecialist(host);
	}

	@Override
	public List<Map<String, Object>> queryleader(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return DoctorinfoDao.queryleader(map);
	}

	@Override
	public Map<String, Object> queryspecialist(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	

	@Override
	public int getallnews(Hospitalnews HOP) {
		
		return DoctorinfoDao.getallnews(HOP);
	}

	@Override
	public List<Doctorinfo> getallleader1(int host) {
		// TODO Auto-generated method stub
		return DoctorinfoDao.getallleader1(host);
	}

}
