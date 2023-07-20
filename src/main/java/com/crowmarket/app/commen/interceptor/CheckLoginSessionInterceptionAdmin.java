package com.crowmarket.app.commen.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class CheckLoginSessionInterceptionAdmin extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		
		if (request.getSession().getAttribute("sessionAdminId") != null) {
			// by pass
			System.out.println("어드민 인터셉터");
			
		} else {
			response.sendRedirect("/portfolioLoginAdmin");
			System.out.println("어드민 인터셉터 실패"+request.getSession().getAttribute("sessionAdminId"));
            return false;
		}
		
		return super.preHandle(request, response, handler);
	}

}
