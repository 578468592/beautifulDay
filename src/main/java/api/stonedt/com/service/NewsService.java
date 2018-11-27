package api.stonedt.com.service;

import java.util.List;
import java.util.Map;

import api.stonedt.com.entity.NewsEntity;

public interface NewsService {

	int getcount(NewsEntity news);

	List<Map<String, Object>> getList(Map<String, Object> map);

}
