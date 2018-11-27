package api.stonedt.com.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import api.stonedt.com.dao.HospitalDao;
import api.stonedt.com.entity.HospitalInfo;
import api.stonedt.com.entity.UserEntity;
import api.stonedt.com.service.UserService;


@RequestMapping(value = "/userlogin")
@Controller
public class UserController {
	//modifyPassword?account1=111&pwd1=222&pwd2=111
	@Autowired
	private UserService userService;
	@Autowired
	private HospitalDao hospitalDao;
	// 去登录页面
	@RequestMapping(value = "/")
	public ModelAndView toLogin1(HttpServletRequest request) {
		ModelAndView m=new ModelAndView("login");
		//mv.setViewName("login");
		return m;
	}
	
	@RequestMapping(value = "/hu")
	public String toLogin(HttpServletRequest request) {

		return "login";
	}

	
	@RequestMapping("/userconsumerlogin")
	@ResponseBody
	public String Consumerlogin(HttpServletRequest request) throws ParseException {
		String result = "";
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		UserEntity user = new UserEntity();
		user.setAccount(account);
		UserEntity consumeruser = userService.conUserLogin(user);
		if(consumeruser==null){
			result = "{\"code\":-1}";
		}else{
			if(consumeruser.getPassword().equals(password)){
				 long todaytime = System.currentTimeMillis();
				
				SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				String todaydate = df.format(new Date());//今天日期
				HospitalInfo hospital = hospitalDao.getHospitalInfo(consumeruser.getHospitalid());
				long endtime = df.parse(hospital.getEndtime()).getTime();  //截止时间
				if(todaytime>endtime){
					result = "{\"code\":2}";
				}else{
					request.getSession().setAttribute("User", consumeruser);//用户信息
					request.getSession().setAttribute("hospital", hospital);//医院信息
					result =  "{\"code\":1}";
				}
				
			}else{
				result = "{\"code\":-1}";
			}
		}
		return result;
		
	}
	@RequestMapping(value = "/old")
	public ModelAndView old(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("oldIE");
		return mv;
	}
	
	
	
}
