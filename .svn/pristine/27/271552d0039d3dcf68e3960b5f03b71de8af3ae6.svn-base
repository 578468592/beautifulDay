package api.stonedt.com.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import api.stonedt.com.dao.FrontierTechnologyDao;
import api.stonedt.com.dao.HospitalDemeanorDao;
import api.stonedt.com.dao.OtherHospitalDao;
import api.stonedt.com.entity.FrontierTechnology;
import api.stonedt.com.entity.HospitalDemeanor;
import api.stonedt.com.entity.NewsEntity;
import api.stonedt.com.entity.OtherHospital;
import api.stonedt.com.service.FrontierTechnologyService;
import api.stonedt.com.service.HospitalDemeanorService;
import api.stonedt.com.service.OtherHospitalService;
@Service("OtherHospitalService")
public class OtherHospitalServiceImpl implements OtherHospitalService {

	
		@Autowired
		private OtherHospitalDao otherHospitalDao;
		@Override
		public int getcount(OtherHospital other) {
			return otherHospitalDao.getcount(other);
		}
		@Override
		public List<OtherHospital> getList(Map<String, Object> map) {
			return otherHospitalDao.getList(map);
		}
		@Override
		public int getnewscount(NewsEntity news) {
			return otherHospitalDao.getnewscount(news);
		}
		@Override
		public List<Map<String,Object>> getOthernewsList(Map<String, Object> map) {
			return otherHospitalDao.getOthernewsList(map);
		}
		@Override
		public OtherHospital getInfo(int otherhospitalid) {
			return otherHospitalDao.getInfo(otherhospitalid);
		}

		
		
		



	
	
	
}
