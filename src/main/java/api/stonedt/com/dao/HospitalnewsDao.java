package api.stonedt.com.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import api.stonedt.com.entity.Hospitalnews;
import api.stonedt.com.entity.NewsEntity;

@Repository
public interface HospitalnewsDao {
     //通过用户评论名，获取网络评论条数
	 public int getallidentification(Hospitalnews HOP);
	//通过标题获取所有标题
	 public int getalltitle(Hospitalnews HOP);
	 //查询所有网络评论
	public List<Map<String, Object>> getallcomment(Map<String, Object>map);
	 //获取所有舆情
	 public List<Map<String, Object>> getallyuqing(Map<String,Object>map);
	 
		
	 
	
}
