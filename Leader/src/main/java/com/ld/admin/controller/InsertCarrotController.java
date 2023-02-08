package com.ld.admin.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ld.admin.service.StudentService;
import com.ld.admin.vo.CarrotVO;
import com.ld.user.service.CarrotService;
import com.ld.user.vo.StudentVO;

@Controller
public class InsertCarrotController {
	@Autowired
	private StudentService studentService;
	@Autowired
	private CarrotService carrotService;
	@GetMapping("/sendcarrot.mdo")
	public String sendcarrotGet(
			Model model) {
		 StudentVO studentVO=new StudentVO();
		//studentVO=studentService.studentList1(parentnumber);
		model.addAttribute("studentList",studentVO);
		return "admin/sendcarrot";
	}
    @RequestMapping(value = "/insertcarrot.mdo", method = {RequestMethod.POST,RequestMethod.GET})
	public String insertcarrotGet(@ModelAttribute CarrotVO carrotVO) {
		System.out.println(carrotVO.getCarrot_date());
    	carrotService.carrotinsert(carrotVO);
		//sqlSessionTemplate.insert("carrot.carrotinsert",carrotVO);
		return "redirect:/carrotList.mdo?parentnumber="+carrotVO.getCarrot_number();
	}
	@RequestMapping("/insertCarrotGroup.mdo")
	public ModelAndView insertCarrotGroup(@RequestParam("carrot_books")String []carrot_books,
			@RequestParam("parentnumber")String []carrot_number,
			@RequestParam("name")String []carrot_name,
			@RequestParam("carrot_date")String []carrot_date,
			@RequestParam("carrot_memorization")String []carrot_memorization,
			@RequestParam("carrot_report")String []carrot_report,
			@RequestParam("carrot_read")String []carrot_read,
			@RequestParam("carrot_trans")String []carrot_trans,
			@RequestParam("carrot_solving")String []carrot_solving,
			@RequestParam("carrot_listen")String []carrot_listen,
			@RequestParam("carrot_getting")String []carrot_getting,
			@RequestParam("carrot_showdown")String []carrot_showdown,
			@RequestParam("carrot_speech")String []carrot_speech,
			@RequestParam("carrot_perfection")String []carrot_perfection,
			@RequestParam("carrot_result")String []carrot_result) {
		CarrotVO carrotVO=new CarrotVO();
		for(int i=0;i<carrot_name.length;i++) {
			carrotVO.setCarrot_date(carrot_date[i]);
			carrotVO.setCarrot_name(carrot_name[i]);
		carrotVO.setCarrot_books(carrot_books[i]);
		carrotVO.setCarrot_number(carrot_number[i]);
		carrotVO.setCarrot_memorization(carrot_memorization[i]);
		carrotVO.setCarrot_report(carrot_report[i]);
		carrotVO.setCarrot_read(carrot_read[i]);
		carrotVO.setCarrot_trans(carrot_trans[i]);
		carrotVO.setCarrot_solving(carrot_solving[i]);
		carrotVO.setCarrot_listen(carrot_listen[i]);
		carrotVO.setCarrot_getting(carrot_getting[i]);
		carrotVO.setCarrot_showdown(carrot_showdown[i]);
		carrotVO.setCarrot_speech(carrot_speech[i]);
		carrotVO.setCarrot_perfection(carrot_perfection[i]);
		carrotVO.setCarrot_result(carrot_result[i]);
		carrotService.carrotinsert(carrotVO);
		}
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("admin/todayCarrotFin");List<StudentVO> studentVO=new ArrayList();
		studentVO=studentService.studentListSelect(carrot_number);
		mav.addObject("studentList",studentVO);
		return mav;
	}
}
