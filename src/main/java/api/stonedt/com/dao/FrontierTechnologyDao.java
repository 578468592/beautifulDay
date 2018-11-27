package api.stonedt.com.dao;

import java.util.List;
import java.util.Map;

import api.stonedt.com.entity.FrontierTechnology;

public interface FrontierTechnologyDao {

	int getcount();

	List<FrontierTechnology> getList(Map<String, Object> map);

}
