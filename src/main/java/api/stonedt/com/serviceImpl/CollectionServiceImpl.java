package api.stonedt.com.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import api.stonedt.com.dao.CollectionDao;
import api.stonedt.com.entity.Collection;
import api.stonedt.com.service.CollectionService;
@Service("CollectionService")
public class CollectionServiceImpl implements CollectionService {

		@Autowired
		private CollectionDao collectionDao;

		@Override
		public int getcount(Collection collection) {
			return collectionDao.getcount(collection);
		}

		@Override
		public List<Map<String, Object>> getList(Map<String, Object> map) {
			return collectionDao.getList(map);
		}

		



	
	
	
	
	
	
}
