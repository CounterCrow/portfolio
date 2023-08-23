package com.crowmarket.app.infra.common.member;

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
public class MemberController {
	@Autowired
	private MemberServiceImpl service;
	
	
	// 관리자화면------------------------------------------------------------------------------
	
	
	@RequestMapping(value="/memberList")
	public String shSelectList(@ModelAttribute("vo") MemberVo vo, Model model) {
		vo.setKeyName(vo.getKeyName() == null ? "" : vo.getKeyName());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<Member> listsh = service.shMemberList(vo);
			model.addAttribute("list", listsh);
//			model.addAttribute("vo", vo);
		} else {
//			by pass
		}
		return "/cdm/infra/member/memberList";
	}
	
	@RequestMapping(value="/memberForm")
	public String selectOne(MemberVo vo, Model model) {
		Member item = service.selectOne(vo);
		model.addAttribute("item",item);
		return "/cdm/infra/member/memberForm";
	}
	
	@RequestMapping(value="/memberUpdele")
	public String updele(Member dto) {
		  service.updele(dto);	
		  return "redirect:/memberList";
	}
	@ResponseBody
	@RequestMapping("/loginAdmin")
	public Map<String,Object> loginAdmin(MemberVo vo,HttpSession httpSession){
		Map<String,Object> returnMap = new HashMap<String,Object>();
		Member rtMemberAdmin = service.loginAdmin(vo);
		if(rtMemberAdmin != null) {
			returnMap.put("rtMemberAdmin",rtMemberAdmin);
			returnMap.put("rt","success");
			httpSession.setMaxInactiveInterval(60*60);//min60
			httpSession.setAttribute("sessionAdminId",vo.getKeyID());
			httpSession.setAttribute("sessionAdminNY",rtMemberAdmin.getAdminNY());
			httpSession.setAttribute("sessionAdminNickName",rtMemberAdmin.getMemberNickName());
		}else {
			returnMap.put("rt","fail");
			
		}
		
		
		return returnMap;
	}	
	@ResponseBody
	@RequestMapping("/loginUser")
	public Map<String,Object> loginUser(MemberVo vo,HttpSession httpSession){
		Map<String,Object> returnMap = new HashMap<String,Object>();
		Member rtMemberUser = service.loginUser(vo);
		if(rtMemberUser != null) {
			returnMap.put("rtMemberUser",rtMemberUser);
			returnMap.put("rt","success");
			httpSession.setMaxInactiveInterval(60*60);//min60
			httpSession.setAttribute("sessionUserId",vo.getKeyID());
			httpSession.setAttribute("sessionAdminNY",rtMemberUser.getAdminNY());
			httpSession.setAttribute("sessionUserNickName",rtMemberUser.getMemberNickName());
			httpSession.setAttribute("sessionUserSeq",rtMemberUser.getMemberSeq());
		}else {
			returnMap.put("rt","fail");
		}
		
		
		return returnMap;
	}	
	
		@RequestMapping(value="/adminLogout") public String logOut(HttpSession httpSession) {
		  httpSession.invalidate();
		  return "redirect:/portfolioLoginAdmin"; }
		
		 @RequestMapping(value="/getAdmin")
		 public String getAdmin(Member dto) {
			 service.getAdmin(dto);		
		  return "redirect:/memberList";
		  }
		 @RequestMapping(value="/loseAdmin")
		 public String loseAdmin(Member dto) {
			 service.loseAdmin(dto);		
		  return "redirect:/memberList";
		  }
	
	// 사용자 화면-------------------------------------------------------------------------------

	@RequestMapping(value="/signUpInsert")
	 public String signUpInsert(Member dto) {
		  service.signUpInsert(dto);	
		  return "project01/login";
	}

	@ResponseBody
	@RequestMapping(value="/signUpChackID")
	public Map<String,Object> signUpChackID(MemberVo vo){
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
