package com.ld.user.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ld.user.service.UserService;
import com.ld.user.vo.UserVO;

@Controller
public class UserController {
	@Autowired
	private final UserService userService;

	@Inject
	public UserController(UserService userService) {
		this.userService = userService;
	}
	@GetMapping("/userlogin.do")
	public String userloginGet() {
		return "user/userlogin";
	}
	@GetMapping("/usersignin.do")
	public String userGet() {
		return "user/usersignin";
	}
	@RequestMapping("/loginCheck.do")
	public ModelAndView loginCheck(@ModelAttribute UserVO userVO, HttpSession session,HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		userVO=userService.getUser(userVO.getUser_id(),userVO.getUser_password());
		mav.setViewName("user/userindex");
		mav.addObject("msg", "success");
		mav.addObject("user", userVO);
		session=request.getSession();
		session.setAttribute("user",userVO);
		return mav;
	}
	
	@GetMapping("/userlogout.do")
	public ModelAndView userlogout(HttpSession session) {
		userService.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/userindex");
		mav.addObject("msg", "logout");
		return mav;
	}
	
	@GetMapping("/")
	public String userindexGet() {
		return "user/userindex";
	}
	
	@RequestMapping(value = "/user_register.do", method = RequestMethod.POST)
	public String en_insertGet(@ModelAttribute UserVO userVO) {
		userService.userregister(userVO);
//		System.out.println(ad_encyVO.toString());
		return "redirect:/userlogin.do";
	}
}
