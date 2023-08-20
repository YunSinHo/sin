package com.ld.admin.controller;

import com.ld.admin.service.LectureService;
import com.ld.admin.vo.LectureVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class LectureController {
	
	@Autowired
	private LectureService lectureService;
	@GetMapping("/mainlecture.mdo")
	public String mainlectureGet() {
		return "admin/mainlecture";
	}
	
	@GetMapping("/lectureinsert.mdo")
	public String lectureinsertGet() {
		return "admin/lectureinsert";
	}
	@ResponseBody
    @RequestMapping(value = "/insertlecture.mdo", method = RequestMethod.POST)
	public String insertlectureGet(@ModelAttribute LectureVO lectureVO) {
		lectureService.lectureinsert(lectureVO);
		//sqlSessionTemplate.insert("lecture.lectureinsert",lectureVO);
		return "redirect:/mainlecture.mdo";
	}
}
