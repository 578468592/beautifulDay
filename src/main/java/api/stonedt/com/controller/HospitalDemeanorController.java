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
import api.stonedt.com.entity.FrontierTechnology;
import api.stonedt.com.entity.HospitalDemeanor;
import api.stonedt.com.entity.HospitalInfo;
import api.stonedt.com.entity.NewsEntity;
import api.stonedt.com.entity.UserEntity;
import api.stonedt.com.service.FrontierTechnologyService;
import api.stonedt.com.service.HospitalDemeanorService;
import api.stonedt.com.service.NewsService;

/**
 * 名院风采
 * @author wangyi
 *
 */
@Controller
@RequestMapping("/hospitaldemeanor")
public class HospitalDemeanorController {
	@Autowired
	private HospitalDemeanorService hospitaldemeanorService;
    /**
     *  列表
     * @param request
     * @return
     * @throws ParseException
     */
	@RequestMapping("/list")
	public ModelAndView list(HttpServletRequest request,ModelAndView mv) throws ParseException {
		Integer page = Integer.parseInt(request.getParameter("page").toString());
		int count = hospitaldemeanorService.getcount(); //得到数量
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
		List<HospitalDemeanor> list = hospitaldemeanorService.getList(map);
		mv.addObject("list", list);
		mv.addObject("count",count);
		mv.addObject("totalPage", totalpage);
		mv.addObject("page", page);
		mv.setViewName("events");
		return mv;
	}
}
