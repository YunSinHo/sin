package com.ld.user.controller;

import com.ld.admin.service.LectureService;
import com.ld.admin.vo.LectureVO;
import com.ld.user.vo.Criteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.inject.Inject;
import java.util.ArrayList;
import java.util.List;

@Controller
public class UserlectureController {
	@Autowired
	private final LectureService lectureService;

	@Inject
	public UserlectureController(LectureService lectureService) {
		this.lectureService = lectureService;
	}
	
	@RequestMapping(value = "/lecturelist.do")
	public ModelAndView lecturelistGet(Model model) throws Exception {
		ModelAndView mav = new ModelAndView();
		Criteria cr = null;
		List<LectureVO> showList = new ArrayList<LectureVO>();
		showList = lectureService.lecturelist(cr);
		mav.addObject("LectureList", showList);
		mav.setViewName("user/lecturelist");
		return mav;
	}
	
	@RequestMapping("/mylecture.do")
	public ModelAndView mylectureGet(@RequestParam int lecture_seq) {
		ModelAndView mav = new ModelAndView();
		LectureVO lectureVO;
		lectureVO = lectureService.lectureread(lecture_seq);
		mav.addObject("lecture_view", lectureVO);
		mav.setViewName("user/mylecture");
		return mav;
	}
}
