package api.stonedt.com.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import api.stonedt.com.dao.NewsDao;
import api.stonedt.com.entity.NewsEntity;
import api.stonedt.com.service.NewsService;

@Service("NewsService")
public class NewsServiceImpl implements NewsService{

	
	@Autowired
	private NewsDao newsDao;
	@Override
	public int getcount(NewsEntity news) {
		// TODO Auto-generated method stub
		return newsDao.getcount(news);
	}
	@Override
	public List<Map<String, Object>> getList(Map<String, Object> map) {
		return newsDao.getList(map);
	}

}
