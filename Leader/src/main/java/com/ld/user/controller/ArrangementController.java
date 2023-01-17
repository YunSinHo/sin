package com.ld.user.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ld.user.service.ArrangementService;
import com.ld.user.vo.ArrangementVO;
import com.ld.user.vo.Criteria;


@Controller
public class ArrangementController {
	@Autowired
	private final ArrangementService arrangementService;
	
	@Inject
	public ArrangementController(ArrangementService arrangementService) {
		this.arrangementService = arrangementService;
	}
	@GetMapping("/arrangementinsert.do")
	public String arrangementinsertGet() {
		return "user/arrangementinsert";
	}
	@ResponseBody
    @RequestMapping(value = "/insertarrangement.do", method = RequestMethod.POST)
	public List<Map<String, Object>> test(@RequestBody List<Map<String, Object>> param) {
		arrangementService.arrangementinsert(param);
		//sqlSessionTemplate.insert("arrangement.arrangementinsert",param);
		return param;
	}
	@GetMapping("/arrangementlist.do")
	public ModelAndView arrangementlistGet(Model model) throws Exception {
		ModelAndView mav = new ModelAndView();
		Criteria Criteria = null;
		List<ArrangementVO> showList = new ArrayList<ArrangementVO>();
		showList = arrangementService.arrangementlist_page(Criteria);
		mav.addObject("ArrangementList", showList);
		mav.setViewName("user/arrangementlist");
		return mav;
	}
	@GetMapping("/arrangementtest.do")
	public ModelAndView arrangementtestGet(@RequestParam String arrangement_name) {
		ModelAndView mav = new ModelAndView();
		List<Object> arrangementVO;
		arrangementVO = arrangementService.arrangementread(arrangement_name);
		mav.addObject("arrangementtest", arrangementVO);
		mav.setViewName("user/arrangementtest");
		return mav;
	}
}
