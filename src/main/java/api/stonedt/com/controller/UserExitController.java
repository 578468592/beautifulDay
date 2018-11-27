package api.stonedt.com.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import api.stonedt.com.dao.HospitalDao;
import api.stonedt.com.entity.UserEntity;
import api.stonedt.com.service.UserService;
/**
 * 用户推出登陆
 * @author wangyi
 *
 */
@Controller
@RequestMapping("/userexit")
public class UserExitController {
	@Autowired
	private HospitalDao hospitalDao;	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/",produces = "text/plain;charset=utf-8")
	public ModelAndView getTelephoneData(ModelAndView mv,HttpServletResponse response,HttpServletRequest request){
		request.getSession().removeAttribute("User");
		request.getSession().removeAttribute("hospital");
		mv.setViewName("login");
		return mv;
	}
	
	@RequestMapping(value ="/passwordedit")
	public ModelAndView topasswordedit(HttpServletRequest request) {
		ModelAndView m=new ModelAndView("passwordedit");
		return m;
	}
	
	/**
	 * 用户修改密码
	 * @return
	 */
	@RequestMapping(value="/modifyPassword",method=RequestMethod.POST)
      @ResponseBody
      public Object modifyPassword(HttpServletRequest request){
		                
		  Map<String, Object> map = new HashMap<>();
			UserEntity  User = (UserEntity)request.getSession().getAttribute("User");  
			            int ids = User.getId();
		         
		          String password1 = request.getParameter("pwd1");
		          String password2 = request.getParameter("pwd2");
		         
		         if(password1!=null && password1!=""){
		          if(password1.equals(password2)){  
		        	  User.setId(ids);
		        	   
		        	  User.setPassword(password1);
		          int count = userService.update(User);
		        
		          if(count!=0){
		          map.put("message", "修改密码成功");
		          map.put("success", true);
                  request.getSession().removeAttribute("User");
                  
		          }else{
		        	  map.put("message", "修改密码失败");
		        	  map.put("success", false);
		          }
		          }else{
		        	  map.put("message", "输入密码不一致修改失败！");
		        	  map.put("success", false);
		          }}else{
		        	  map.put("message", "没输入密码就想修改密码美得你！");
		        	  map.put("success", false);
		          }
		
			
		
		          
		return map;
		
	}
	
	
}
