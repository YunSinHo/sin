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

import com.ld.user.service.SchoolmatchService;
import com.ld.user.vo.Criteria;
import com.ld.user.vo.SchoolmatchVO;

@Controller
public class SchoolmatchController {
	@Autowired
	private final SchoolmatchService schoolmatchService;
	
	@Inject
	public SchoolmatchController(SchoolmatchService schoolmatchService) {
		this.schoolmatchService = schoolmatchService;
	}
	@GetMapping("/schoolmatchtest.do")
	public String schoolmatchtestGet() {
		return "user/schoolmatchtest";
	}
	@RequestMapping(value = "/insertschoolmatch.do", method = RequestMethod.POST)
	public String schoolmatchinsertGet(@ModelAttribute SchoolmatchVO schoolmatchVO) {
		schoolmatchService.schoolmatchInsert(schoolmatchVO);
		return "redirect:/schoolmatchlist.do";
	}
	@RequestMapping(value = "/schoolmatchlist.do")
	public ModelAndView schoolmatchlistGet(Model model) throws Exception {
		ModelAndView mav = new ModelAndView();
		Criteria Criteria = null;
		List<SchoolmatchVO> schoolmatchList = new ArrayList<SchoolmatchVO>();
		schoolmatchList = schoolmatchService.schoolmatchlist(Criteria);
		mav.addObject("SchoolmatchList", schoolmatchList);
		return mav;
	}
	@RequestMapping("schoolmatchresult.do")
	public ModelAndView schoolmatchresultGet(@RequestParam int schoolmatch_seq) {
		ModelAndView mav = new ModelAndView();
		SchoolmatchVO schoolmatchVO;
		schoolmatchVO = schoolmatchService.schoolmatchresult(schoolmatch_seq);
		mav.addObject("schoolmatchresult", schoolmatchVO);
		return mav;
	}
}
