package com.crowmarket.app.infra.commen.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class memberController {
	@Autowired
	private memberServiceImpl service;
	
	
	// 관리자화면------------------------------------------------------------------------------
	
	
	@RequestMapping(value="/memberList")
	public String shSelectList(@ModelAttribute("vo") memberVo vo, Model model) {
		vo.setKeyName(vo.getKeyName() == null ? "" : vo.getKeyName());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<member> listsh = service.shMemberList(vo);
			model.addAttribute("list", listsh);
//			model.addAttribute("vo", vo);
		} else {
//			by pass
		}
		return "/cdm/infra/member/memberList";
	}
	
	@RequestMapping(value="/memberForm")
	public String selectOne(memberVo vo, Model model) {
		member item = service.selectOne(vo);
		model.addAttribute("item",item);
		return "/cdm/infra/member/memberForm";
	}
	
	@RequestMapping(value="/memberUpdele")
	public String updele(member dto) {
		  service.updele(dto);	
		  return "redirect:/memberList";
	}
	@ResponseBody
	@RequestMapping("/login")
	public Map<String,Object> login(memberVo vo,HttpSession httpSession){
		Map<String,Object> returnMap = new HashMap<String,Object>();
		member rtMember = service.login(vo);
		
		if(rtMember != null) {

			httpSession.setMaxInactiveInterval(60*60);//min60
			httpSession.setAttribute("sessionId",vo.getKeyID());
			httpSession.setAttribute("sessionAdminNY",rtMember.getAdminNY());
			httpSession.setAttribute("sessionNickName",rtMember.getMemberNickName());
			returnMap.put("rtMember",rtMember);
			returnMap.put("rt","success");
		}else {
			returnMap.put("rt","fail");
		}
		
		
		return returnMap;
	}	
	
		@RequestMapping(value="/adminLogout") public String logOut(HttpSession httpSession) {
		  httpSession.invalidate();
		  System.out.println("2131241");
		  return "redirect:/portfolioLoginAdmin"; }
		
		 @RequestMapping(value="/getAdmin")
		 public String getAdmin(member dto) {
			 service.getAdmin(dto);		
		  return "redirect:/memberList";
		  }
		 @RequestMapping(value="/loseAdmin")
		 public String loseAdmin(member dto) {
			 service.loseAdmin(dto);		
		  return "redirect:/memberList";
		  }
	
	// 사용자 화면-------------------------------------------------------------------------------

	@RequestMapping(value="/signUpInsert")
	 public String signUpInsert(member dto) {
		  service.signUpInsert(dto);	
		  return "projact01/login";
	}

	@ResponseBody
	@RequestMapping(value="/signUpChackID")
	public Map<String,Object> signUpChackID(memberVo vo){
		Map<String,Object> returnMap = new HashMap<String,Object>();
		Integer checkID = service.signUpChackID(vo);
		if(checkID != null && checkID != 0) {
			returnMap.put("rt","fail");
		}else {
			returnMap.put("rt","success");
		}
		
		
		return returnMap;
	}
	
}
