package api.stonedt.com.controller;

import java.text.ParseException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import api.stonedt.com.dao.CollectionDao;
import api.stonedt.com.entity.Collection;
import api.stonedt.com.entity.HospitalInfo;
import api.stonedt.com.entity.NewsEntity;
import api.stonedt.com.entity.UserEntity;
import api.stonedt.com.service.NewsService;

/**
 * 情报细分
 * @author wangyi
 *
 */
@Controller
@RequestMapping("/intelligence")
public class IntelligenceVersionController {
	@Autowired
	private NewsService newsService;
	@Autowired
	private CollectionDao collectionDao;
    /**
     *  情报细分
     * @param request
     * @return
     * @throws ParseException
     */
	@RequestMapping("/list")
	public ModelAndView list(HttpServletRequest request,ModelAndView mv) throws ParseException {
		NewsEntity news = new NewsEntity();
		Integer kind = Integer.parseInt(request.getParameter("kind").toString());
		news.setKind(kind);
		Integer page = Integer.parseInt(request.getParameter("page").toString());
		UserEntity  user = (UserEntity)request.getSession().getAttribute("User");
		HospitalInfo  hospital = (HospitalInfo)request.getSession().getAttribute("hospital");
		news.setComment(1);
		int hospitalid = hospital.getId();
		news.setHospitalid(hospitalid);
		int count = newsService.getcount(news); //得到数量
		int totalpage = 0;
		if(count%10==0){
			totalpage = count/10;
		}else{
			totalpage = count/10+1;
		}
		if(page>=totalpage){
			page = totalpage;
			if(page==0){
				page = 1;
			}
		}
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("start", (page-1)*10);
		map.put("kind", kind);
		map.put("hospitalid", hospitalid);
		map.put("comment", 1);
		map.put("userid", user.getId());
		List<Map<String,Object>> list = newsService.getList(map);
		mv.addObject("list", list);
		mv.addObject("count",count);
		mv.addObject("totalPage", totalpage);
		mv.addObject("page", page);
		mv.addObject("kind", kind);
		mv.setViewName("subject");
		return mv;
		
	}
	
	/**
	 * 收藏信息
	 * @param request
	 * @return
	 * @throws ParseException
	 */
	@RequestMapping("/collection")
	@ResponseBody
	public String CollectionInfo(HttpServletRequest request) throws ParseException {
		String result = "{\"code\":1}";
		Collection collection = new Collection();
		int newsid = Integer.parseInt(request.getParameter("id"));
		collection.setNewsid(newsid);
		UserEntity  user = (UserEntity)request.getSession().getAttribute("User");
		
		HospitalInfo  hospital = (HospitalInfo)request.getSession().getAttribute("hospital");
		collection.setUserid(user.getId());
		collection.setDate(new Date());
		collection.setHospitalid(hospital.getId());
		int count = collectionDao.insertOne(collection);
		if(count<=0){
			result = "{\"code\":-1}";
		}
		return result;	
	}
}
