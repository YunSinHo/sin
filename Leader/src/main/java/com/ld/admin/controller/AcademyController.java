package com.ld.admin.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ld.admin.service.AcademyService;
import com.ld.admin.vo.AcademyVO;
import com.ld.user.vo.Criteria;

@Controller
public class AcademyController {

	@Autowired
	private final AcademyService academyService;

	@Inject
	public AcademyController(AcademyService academyService) {
		this.academyService = academyService;
	}
	@RequestMapping(value = "/accessacademy.mdo")
	public ModelAndView accessacademyGet(Model model,HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		if(session.getAttribute("admin")== null) {
			mav.setViewName("admin/adminlogin");
		}else {
			mav.setViewName("admin/accessacademy");
		}
		Criteria cr = null;
		List<AcademyVO> showList = new ArrayList<AcademyVO>();
		showList = academyService.academylist(cr);
		mav.addObject("AcademyList", showList);
		return mav;
	}
	@GetMapping("/academyinsert.mdo")
	public String academyinsertGet() {
		return "admin/academyinsert";
	}
	@RequestMapping(value = "/insertacademy.mdo", method = RequestMethod.POST)
	public String academy_insertGet(@ModelAttribute AcademyVO academyVO) {
		academyService.academyInsert(academyVO);
//		System.out.println(ad_encyVO.toString());
		return "redirect:/accessacademy.mdo";
	}
	@RequestMapping("/academyview.mdo")
	public ModelAndView getacademyGet(@RequestParam int academy_seq,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if(session.getAttribute("admin")== null) {
			mav.setViewName("admin/adminlogin");
		}else {
			mav.setViewName("admin/academyview");
		}
		AcademyVO academyVO;
		academyVO = academyService.academyread(academy_seq);
		mav.addObject("academy_view", academyVO);
		return mav;
	}

	@RequestMapping(value = "/adminsignin.mdo")
	public ModelAndView adminsigninGet(Model model) throws Exception {
		ModelAndView mav = new ModelAndView();
		Criteria cr = null;
		List<AcademyVO> showList = new ArrayList<AcademyVO>();
		showList = academyService.academylist(cr);
		mav.addObject("AcademysigninList", showList);
		mav.setViewName("admin/adminsignin");
		return mav;
	}
}
