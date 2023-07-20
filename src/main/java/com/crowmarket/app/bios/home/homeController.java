package com.crowmarket.app.bios.home;

	import javax.servlet.http.HttpSession;
	import org.springframework.stereotype.Controller;
	import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class homeController {
	  
	  
	 	  
	   
	  
	  @RequestMapping(value="/") public String portfolioHome() {
	  
	  return "portfolio/index"; }
	  
	  @RequestMapping(value="/portfolioLoginAdmin") public String portfolioLoginAdmin() {
	  
	  return "cdm/login"; }
	  
	  @RequestMapping(value="/admin") public String admin() {
	  
	  return "cdm/infra/index/index"; }
	  
	  @RequestMapping(value="/member") public String adminMember() {
	  
	  return "cdm/infra/index/member"; }
	  
	  @RequestMapping(value="/product") public String adminProduct() {
	  
	  return "cdm/infra/index/product"; }
	  
	  @RequestMapping(value="/userLogin") public String userLogin() {
		  
		  return "projact01/login"; }
	  
	  @RequestMapping(value="/projact01") public String projact01() {
		  
		  return "projact01/infra/index/index"; }
	  
	  @RequestMapping(value="/signUp") public String signUp() {
		  
		  return "projact01/infra/member/signUp"; }
	  
	  @RequestMapping(value="/userLogout") public String logOut(HttpSession httpSession) {
		  httpSession.invalidate();
		  return "redirect:/projact01"; }
	  
	  @RequestMapping(value="/shop") public String shop() {
		  
		  return "projact01/infra/subpage/shop"; }
	  	
	  @RequestMapping(value="/shopDetails") public String shopDetails() {
		  
		  return "projact01/infra/subpage/shopDetails"; }
	 
}
