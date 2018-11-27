package api.stonedt.com.service;

import java.util.List;
import java.util.Map;

import api.stonedt.com.entity.Doctorinfo;
import api.stonedt.com.entity.Hospitalnews;

public interface DoctorinfoService {
	    // 党委
		public List<Doctorinfo> getallleader(int host);
		// 查询关注的专家
		public List<Doctorinfo> getallspecialist(int host);
		//获取所有的关于领导班子的新闻
		public List<Map<String, Object>> queryleader(Map<String, Object> map);
		//领导班子的新闻数量
		public int getallnews(Hospitalnews HOP);
		//
		public Map<String, Object> queryspecialist(Map<String, Object> map);
		public List<Doctorinfo> getallleader1(int host);
}
