package api.stonedt.com.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import api.stonedt.com.dao.FrontierTechnologyDao;
import api.stonedt.com.entity.FrontierTechnology;
import api.stonedt.com.entity.NewsEntity;
import api.stonedt.com.service.FrontierTechnologyService;
@Service("FrontierTechnologyService")
public class FrontierTechnologyServiceImpl implements FrontierTechnologyService {

	
		@Autowired
		private FrontierTechnologyDao frontierTechnologyDao;

		@Override
		public int getcount() {
			return frontierTechnologyDao.getcount();
		}

		@Override
		public List<FrontierTechnology> getList(Map<String, Object> map) {
			return frontierTechnologyDao.getList(map);
		}
		


	
	
	
}
