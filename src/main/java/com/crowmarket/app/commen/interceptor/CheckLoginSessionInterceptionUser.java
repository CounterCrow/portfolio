package com.crowmarket.app.commen.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class CheckLoginSessionInterceptionUser extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		
		if (request.getSession().getAttribute("sessionUserId") != null) {
			// by pass
			System.out.println("유저 인터셉터");
		} else {
			response.sendRedirect("/userLogin");
			System.out.println("유저 인터셉터 실패");
            return false;
		}
		
		return super.preHandle(request, response, handler);
	}
	  
}
