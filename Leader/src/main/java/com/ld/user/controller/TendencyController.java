package com.ld.user.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ld.user.service.TendencyService;
import com.ld.user.vo.Criteria;
import com.ld.user.vo.TendencyVO;

@Controller
public class TendencyController {
	@Autowired
	private final TendencyService tendencyService;
	
	@Inject
	public TendencyController(TendencyService tendencyService) {
		this.tendencyService = tendencyService;
	}
	
	@GetMapping("/tendencytest.do")
	public String tendencytestGet() {
		return "user/tendencytest";
	}
	
	@RequestMapping(value = "/inserttendency.do", method = RequestMethod.POST)
	public String ten_insertGet(@ModelAttribute TendencyVO tendencyVO) {
		tendencyService.tendencyInsert(tendencyVO);
		return "redirect:/tendencyboard.do";
	}
	@RequestMapping(value = "/tendencyboard.do")
	public ModelAndView tendencylistGet(Model model) throws Exception {
		ModelAndView mav = new ModelAndView();
		Criteria Criteria = null;
		List<TendencyVO> tenList = new ArrayList<TendencyVO>();
		tenList = tendencyService.tendencylist(Criteria);
		mav.addObject("TendencyList", tenList);
		mav.setViewName("user/tendencyboard");
		return mav;
	}
	@RequestMapping("/tendencyresult.do")
	public ModelAndView tendencyresultGet(@RequestParam int tendency_seq) {
		ModelAndView mav = new ModelAndView();
		TendencyVO tendencyVO;
		tendencyVO = tendencyService.tendencyresult(tendency_seq);
		mav.addObject("tendencyresult", tendencyVO);
		mav.setViewName("user/tendencyresult");
		return mav;
	}
}
