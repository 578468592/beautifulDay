package api.stonedt.com.dao;


import java.util.List;
import java.util.Map;


import org.springframework.stereotype.Repository;

import api.stonedt.com.entity.Doctorinfo;
import api.stonedt.com.entity.Hospitalnews;
@Repository
public interface DoctorinfoDao {
     
	// 党委
	public List<Doctorinfo> getallleader(int host);
	// 查询关注的专家
	public List<Doctorinfo> getallspecialist(int host);
	//获取所有的关于领导班子及个人的新闻
	public List<Map<String, Object>> queryleader(Map<String, Object> map);
	// 查询党委信息个人信息
	public List<Doctorinfo> getallleader1(int host);
	int getallnews(Hospitalnews host);
	
}
