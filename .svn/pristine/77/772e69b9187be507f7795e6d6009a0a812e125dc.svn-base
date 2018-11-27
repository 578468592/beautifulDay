package api.stonedt.com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import api.stonedt.com.entity.Admin;
import api.stonedt.com.service.AdminService;



@Controller
@RequestMapping("/")
public class AdminController {
	@Autowired
	private AdminService adminService;
	@RequestMapping(value="/",produces = "text/plain;charset=utf-8")
	public ModelAndView getTelephoneData(ModelAndView mv,HttpServletResponse response,HttpServletRequest request){
		Admin admin = new Admin();
		admin.setAccount("admin");
		 
		Admin admininfo = adminService.getAdminInfo(admin);
		
		mv.addObject("admin", admininfo);
		mv.addObject("mm", "2");
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping(value="/login",produces = "text/plain;charset=utf-8")
	public ModelAndView login(ModelAndView mv,HttpServletResponse response,HttpServletRequest request){
		
		mv.setViewName("login");
		return mv;
	}
	
	@RequestMapping(value="/left",produces = "text/plain;charset=utf-8")
	public ModelAndView left(ModelAndView mv,HttpServletResponse response,HttpServletRequest request){
		
		mv.setViewName("left");
		return mv;
	}
	
	@RequestMapping(value="/top",produces = "text/plain;charset=utf-8")
	public ModelAndView top(ModelAndView mv,HttpServletResponse response,HttpServletRequest request){
		
		mv.setViewName("top");
		return mv;
	}
	
	@RequestMapping(value="/method",produces = "text/plain;charset=utf-8")
	public ModelAndView method(ModelAndView mv,HttpServletResponse response,HttpServletRequest request){
		
		mv.setViewName("method");
		return mv;
	}

	@RequestMapping(value="/sensational",produces = "text/plain;charset=utf-8")
	public ModelAndView sensational(ModelAndView mv,HttpServletResponse response,HttpServletRequest request){
		
		mv.setViewName("sensational");
		return mv;
	}
	
	@RequestMapping(value="/doctors",produces = "text/plain;charset=utf-8")
	public ModelAndView doctors(ModelAndView mv,HttpServletResponse response,HttpServletRequest request){
		
		mv.setViewName("doctors");
		return mv;
	}
	
	@RequestMapping(value="/comments",produces = "text/plain;charset=utf-8")
	public ModelAndView comments(ModelAndView mv,HttpServletResponse response,HttpServletRequest request){
		
		mv.setViewName("comments");
		return mv;
	}
	
	@RequestMapping(value="/subject",produces = "text/plain;charset=utf-8")
	public ModelAndView subject(ModelAndView mv,HttpServletResponse response,HttpServletRequest request){
		
		mv.setViewName("subject");
		return mv;
	}
	
	@RequestMapping(value="/focus",produces = "text/plain;charset=utf-8")
	public ModelAndView focus(ModelAndView mv,HttpServletResponse response,HttpServletRequest request){
		
		mv.setViewName("focus");
		return mv;
	}
	
	@RequestMapping(value="/events",produces = "text/plain;charset=utf-8")
	public ModelAndView events(ModelAndView mv,HttpServletResponse response,HttpServletRequest request){
		
		mv.setViewName("events");
		return mv;
	}
	
	@RequestMapping(value="/technology",produces = "text/plain;charset=utf-8")
	public ModelAndView technology(ModelAndView mv,HttpServletResponse response,HttpServletRequest request){
		
		mv.setViewName("technology");
		return mv;
	}
	
	@RequestMapping(value="/collection",produces = "text/plain;charset=utf-8")
	public ModelAndView collection(ModelAndView mv,HttpServletResponse response,HttpServletRequest request){
		
		mv.setViewName("collection");
		return mv;
	}
	
	@RequestMapping(value="/passwordedit",produces = "text/plain;charset=utf-8")
	public ModelAndView passwordedit(ModelAndView mv,HttpServletResponse response,HttpServletRequest request){
		
		mv.setViewName("passwordedit");
		return mv;
	}
	
	@RequestMapping(value="/profile_wxl",produces = "text/plain;charset=utf-8")
	public ModelAndView profile_wxl(ModelAndView mv,HttpServletResponse response,HttpServletRequest request){
		
		mv.setViewName("profile_wxl");
		return mv;
	}
	
}
