package api.stonedt.com.service;

import java.util.List;
import java.util.Map;

import api.stonedt.com.entity.HospitalDemeanor;
import api.stonedt.com.entity.NewsEntity;
import api.stonedt.com.entity.OtherHospital;

public interface OtherHospitalService {

	int getcount(OtherHospital other);

	List<OtherHospital> getList(Map<String, Object> map);

	int getnewscount(NewsEntity news);

	List<Map<String, Object>> getOthernewsList(Map<String, Object> map);

	OtherHospital getInfo(int otherhospitalid);

}
