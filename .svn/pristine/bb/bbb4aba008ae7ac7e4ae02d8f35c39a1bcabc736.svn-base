package api.stonedt.com.actionInterceptor;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import api.stonedt.com.entity.UserEntity;
import api.stonedt.com.service.UserService;


/**
 * 用户拦截器
 * @author wangyi
 *
 */
public class UserAccessInterceptor implements HandlerInterceptor {
	

	Logger logger = Logger.getLogger(this.getClass());
	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		// TODO Auto-generated method stub
		 HttpSession session = request.getSession();
	    UserEntity obj = (UserEntity) session.getAttribute("User");
	      if(null == obj)
	      {
	      	  request.getRequestDispatcher("/userlogin/").forward(request, response);
	          return false;
	      }
	      
	      
	      return true;
	}

}
