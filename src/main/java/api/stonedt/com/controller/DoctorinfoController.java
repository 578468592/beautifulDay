package api.stonedt.com.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sun.java.swing.plaf.motif.resources.motif;

import api.stonedt.com.entity.Doctorinfo;
import api.stonedt.com.entity.Hospitalnews;
import api.stonedt.com.entity.UserEntity;
import api.stonedt.com.service.DoctorinfoService;

@Controller
@RequestMapping("/Doctorinfo")
public class DoctorinfoController {
     @Autowired
     private DoctorinfoService doctorinfoService;
     List<Doctorinfo> list = new ArrayList<>();
	 List<Doctorinfo> list2 = new ArrayList<>();
     @RequestMapping(value="/getallleader",produces = "text/plain;charset=utf-8")
     public ModelAndView getallleader(ModelAndView model,HttpServletRequest request,HttpServletResponse response){ 	 
    	
    	 List<Doctorinfo> list = new ArrayList<>();
    	 List<Doctorinfo> list2 = new ArrayList<>();
        	 UserEntity  user = (UserEntity)request.getSession().getAttribute("User"); 
        	
        	     int  hospitalid  =user.getHospitalid();
        	  
        	      list=doctorinfoService.getallleader(hospitalid);
        	      list2=doctorinfoService.getallspecialist(hospitalid);
        	     if(list!=null){
        	    	 model.addObject("list", list);
        	    	 model.addObject("list2", list2);
        	    	 model.addObject("message", "获取成功");
        	     }else{
        	    	 model.addObject("message", "获取失败");
        	     }
        	     model.setViewName("doctors");
        
    	 return model;
     }
            @RequestMapping(value="/queryleader",produces = "text/plain;charset=utf-8")
        public ModelAndView queryleader(ModelAndView model,HttpServletRequest request,HttpServletResponse response){
            	int doctorid =Integer.parseInt( request.getParameter("id"));
            	Integer page = Integer.parseInt(request.getParameter("page").toString());
          	 int  type =Integer.parseInt( request.getParameter("type").toString());
            	 UserEntity  user = (UserEntity)request.getSession().getAttribute("User"); 
            	
            	 int  hospitalid = user.getHospitalid();
            	 Hospitalnews HOST = new Hospitalnews();
            	 
            	 HOST.setDoctorid(doctorid);
            	 HOST.setType(type);
            	 
            	  int count = doctorinfoService.getallnews(HOST);
            	
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
          		map.put("hospitalid", hospitalid);
          		map.put("comment", 1);	
          		map.put("userid", user.getId());
        	     map.put("doctorid", doctorid);
        	     map.put("hospitalid", hospitalid);
        	     map.put("type", type);
        	     List<Map<String, Object>>list =  doctorinfoService.queryleader(map);
        	       List<Doctorinfo> list1  = doctorinfoService.getallleader1(doctorid);
        	        model.addObject("list", list);
        	        model.addObject("list1", list1);
        	        model.addObject("type", type);
        	        model.addObject("count",count);
        	        model.addObject("totalPage", totalpage);
        	        model.addObject("page", page);
        	        model.addObject("userid",user.getId());
        	        model.addObject("doctorid", doctorid);
        	        model.setViewName("profile_wxl");
        	return model;
        }
     
}
