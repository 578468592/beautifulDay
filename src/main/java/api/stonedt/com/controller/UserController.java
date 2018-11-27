package api.stonedt.com.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import api.stonedt.com.entity.user;
import api.stonedt.com.service.UserService;


@RequestMapping(value = "/userlogin")
@Controller
public class UserController {
	//modifyPassword?account1=111&pwd1=222&pwd2=111
	@Autowired
	private UserService userService;

	// 去登录页面
	@RequestMapping(value = "/")
	public ModelAndView toLogin1(HttpServletRequest request) {
		ModelAndView m=new ModelAndView("login");
		
		//mv.setViewName("login");
		return m;
	}
	
	
	
	@RequestMapping(value = "/method")
	public String toLogin(HttpServletRequest request) {
		
		return "method";
	}

	@RequestMapping("/findUserByaccount")
	@ResponseBody
	public Object findUserByaccount(HttpServletRequest request){
		Map<String, Object> map = new HashMap<>();
		
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		user user = new user();
		user.setAccount(account);
		 user us  =userService.findUserByaccount(user);
		 if(us!=null){
			String passwords= us.getPassword();
			 if(passwords.equals(password)){
				 map.put("message", "登陆成功");
				 map.put("boolean", true);
				 request.getSession().setAttribute("user", us);
			 }else{
				 map.put("message", "密码错误");
			 }
		 }else{
			 map.put("message", "该账户暂未注册");
		 }
		return map;		
	}
	

	@RequestMapping(value = "/old")
	public ModelAndView old(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("oldIE");
		return mv;
	}
	
	
	
}
