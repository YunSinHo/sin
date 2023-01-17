package com.ld.admin.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ld.admin.service.AdminService;
import com.ld.admin.service.StudentService;
import com.ld.admin.vo.AdminVO;

@Controller
public class AdminController {

	@Autowired
	private final AdminService adminService;
	@Autowired
	private  StudentService studentService;
	@Inject
	public AdminController(AdminService adminService) {
		this.adminService = adminService;
	}
	
	@GetMapping("/index.mdo")
	public String indexGet() {
		return "admin/index";
	}
	@GetMapping("/adminlogin.mdo")
	public String adminloginGet() {
		return "admin/adminlogin";
	}
	@GetMapping("/admininfor.mdo")
	public String admininforGet() {
		return "admin/admininfor";
	}
	
	@RequestMapping(value="/adminloginCheck.mdo", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> adminloginCheck(@RequestParam String adminid, @RequestParam String adminpassword, HttpSession session, Model model){
		
		//세션 유지시간 설정 
		session.setMaxInactiveInterval(7200); // 7200 = 60s*120 (120분)

		Map<String, String> map = new HashMap<String, String>();
		AdminVO vo = adminService.adminloginCheck(adminid);
		if (vo == null) {
//			System.out.println("없당");
			map.put("msg","idFail");
			return map;	
		}
		
		boolean password = BCrypt.checkpw(adminpassword, vo.getAdmin_password());
		if(!password) {
//			System.out.println("비번 다름");
			map.put("msg","pwFail");
			return map;
		}
		
		if(vo.getAdmin_tier().equals("head") && vo.getAdmin_access().equals("no")) {
//			System.out.println("학원장 비활성화");
			map.put("msg","status");
			return map;
		}
		if(vo.getAdmin_tier().equals("head") && vo.getAdmin_access().equals("yes")) {
			session.setAttribute("admin", vo);
//			System.out.println("학원장 로그인");
			map.put("msg","head_success");
				return map;
		}
		if(vo.getAdmin_tier().equals("teacher") && vo.getAdmin_access().equals("no")) {
//			System.out.println("교사 비활성화");
			map.put("msg","status");
			return map;
		}
		if(vo.getAdmin_tier().equals("teacher") && vo.getAdmin_access().equals("yes")) {
			session.setAttribute("admin", vo);
//			System.out.println("교사 로그인");
			map.put("msg","teacher_success");
				return map;
		}
		if(vo.getAdmin_access().equals("2")) {
//			System.out.println("탈퇴회원");
			map.put("msg","deleteMember");
			return map;
		};
		session.setAttribute("admin", vo);
//		System.out.println("최고관리자");
		map.put("msg","success");
		return map;
	}
	
	@GetMapping("/adminlogout.mdo")
	public ModelAndView userlogout(HttpSession session) {
		adminService.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/adminlogin");
		mav.addObject("msg", "logout");
		return mav;
	}
	
	
	@RequestMapping(value = "/admin_register.mdo", method = RequestMethod.POST)
	public String admin_registerPOST(@ModelAttribute AdminVO adminVO){
		
		AdminVO tempAdminVO = adminVO;
		
		String hashedPw = BCrypt.hashpw(tempAdminVO.getAdmin_password(), BCrypt.gensalt());
		tempAdminVO.setAdmin_password(hashedPw);
		System.out.println(hashedPw);
				
		
		adminService.adminregister(adminVO);
	
		return "admin/adminlogin";
	}
	
}
