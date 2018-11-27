package api.stonedt.com.service;


import java.util.List;
import java.util.Map;

import api.stonedt.com.entity.Collection;

public interface CollectionService {

	int getcount(Collection collection);

	List<Map<String, Object>> getList(Map<String, Object> map);


	


}
