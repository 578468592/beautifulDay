package api.stonedt.com.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import api.stonedt.com.dao.FrontierTechnologyDao;
import api.stonedt.com.dao.HospitalDemeanorDao;
import api.stonedt.com.entity.FrontierTechnology;
import api.stonedt.com.entity.HospitalDemeanor;
import api.stonedt.com.entity.NewsEntity;
import api.stonedt.com.service.FrontierTechnologyService;
import api.stonedt.com.service.HospitalDemeanorService;
@Service("HospitalDemeanorService")
public class HospitalDemeanorServiceImpl implements HospitalDemeanorService {

	
		@Autowired
		private HospitalDemeanorDao hospitaldemeanorDao;

		@Override
		public int getcount() {
			return hospitaldemeanorDao.getcount();
		}

		@Override
		public List<HospitalDemeanor> getList(Map<String, Object> map) {
			return hospitaldemeanorDao.getList(map);
		}
		
		



	
	
	
}
