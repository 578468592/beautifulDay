package api.stonedt.com.controller;

import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 
 * @author Administrator
 *     查询舆情
 */
import org.springframework.web.servlet.ModelAndView;

import api.stonedt.com.dao.CollectionDao;
import api.stonedt.com.entity.HospitalInfo;
import api.stonedt.com.entity.Hospitalnews;
import api.stonedt.com.entity.UserEntity;
import api.stonedt.com.service.HospitalnewsService;
@Controller
@RequestMapping("/Hospitalnews")
public class HospitalnewsController {
	@Autowired
	private HospitalnewsService hospitalnewsService;
	@Autowired
	private CollectionDao collectionDao;
	
	@RequestMapping("/list")
	public ModelAndView list(HttpServletRequest request,ModelAndView mv) throws ParseException {
		Hospitalnews news = new Hospitalnews();
		Integer kind = Integer.parseInt(request.getParameter("kind").toString());
	
		Integer page = Integer.parseInt(request.getParameter("page").toString());
		UserEntity  user = (UserEntity)request.getSession().getAttribute("User");
		HospitalInfo  hospital = (HospitalInfo)request.getSession().getAttribute("hospital");
		
		int hospitalid = hospital.getId();
		news.setHospitalid(hospitalid);
		news.setKind(kind);
		news.setEmotion(kind);
	
		int count = hospitalnewsService.getallidentification(news); //得到数量
		
		int totalpage = 0;
		if(count%10==0){
			totalpage = count/10;
		}else{
			totalpage = count/10+1;
		}
		if(page>=totalpage){
			page = totalpage ;
			if(page == 0){
				page = 1;
			}
		}
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("start", (page-1)*10);
		map.put("kind", kind);
		map.put("hospitalid", hospitalid);
		map.put("comment", 1);	
		map.put("userid", user.getId());
		List<Map<String,Object>> list = hospitalnewsService.getallyuqing(map);
		mv.addObject("list", list);
		mv.addObject("count",count);
		mv.addObject("totalPage", totalpage);
		mv.addObject("page", page);
		mv.addObject("kind", kind);
		mv.setViewName("sensational");
		return mv;
		
	}
	@RequestMapping("/networkevaluation")
	//网络评价
	public ModelAndView networkevaluation(HttpServletRequest request,ModelAndView mv) throws ParseException {
		Hospitalnews news = new Hospitalnews();
		Integer kind = Integer.parseInt(request.getParameter("kind").toString());
		news.setEmotion(kind);
		Integer page = Integer.parseInt(request.getParameter("page").toString());
		UserEntity  user = (UserEntity)request.getSession().getAttribute("User");
		HospitalInfo  hospital = (HospitalInfo)request.getSession().getAttribute("hospital");
		
		int hospitalid = hospital.getId();
		news.setHospitalid(hospitalid);
		news.setKind(kind);
		
		news.setHospitalid(hospitalid);
	
		int count = hospitalnewsService.getalltitle(news); //得到数量
		
		int totalpage = 0;
		if(count%10==0){
			totalpage = count/10;
		}else{
			totalpage = count/10+1;
		}
		if(page>=totalpage){
			page = totalpage ;
			if(page == 0){
				page = 1;
			}
		}
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("start", (page-1)*10);
		map.put("kind", kind);
		map.put("hospitalid", hospitalid);
		map.put("comment", 1);
		/*map.put("emotion", emotion);*/
		map.put("userid", user.getId());
		List<Map<String,Object>> list = hospitalnewsService.getallcomment(map);
		mv.addObject("list", list);
		mv.addObject("count",count);
		mv.addObject("totalPage", totalpage);
		mv.addObject("page", page);	
		mv.addObject("kind", kind);
		mv.setViewName("comments");
		return mv;
		
	}
	
}
