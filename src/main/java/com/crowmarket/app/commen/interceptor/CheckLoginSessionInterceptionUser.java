package com.crowmarket.app.commen.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class CheckLoginSessionInterceptionUser extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
	        throws Exception {

	    HttpSession session = request.getSession();
	    String sessionAdminNYStr = (String) session.getAttribute("sessionAdminNY");
	    Integer sessionAdminNY = null;

	    if (sessionAdminNYStr != null) {
	        try {
	            sessionAdminNY = Integer.parseInt(sessionAdminNYStr);
	        } catch (NumberFormatException e) {
	            // 캐스팅 실패 시 처리
	            e.printStackTrace();
	        }
	    }

	    if (session.getAttribute("sessionId") != null && sessionAdminNY != null) {
	        if (sessionAdminNY != 0) {
	        	response.sendRedirect("/userLogin");
	        	System.out.println("관리자");
	        } else {
	            System.out.println("일반 회원");
	        }
	    } else {
	        response.sendRedirect("/userLogin");
	        System.out.println("Redirect to login");
	        return true;
	    }

	    return super.preHandle(request, response, handler);
	}
}
