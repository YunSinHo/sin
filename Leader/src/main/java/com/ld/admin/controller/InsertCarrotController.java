package com.ld.admin.controller;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ld.admin.service.StudentService;
import com.ld.admin.vo.CarrotVO;
import com.ld.admin.vo.StudentVO;
import com.ld.user.service.CarrotService;

@Controller
public class InsertCarrotController {
	@Autowired
	private StudentService studentService;
	@Autowired
	private CarrotService carrotSerivce;
	@GetMapping("/sendcarrot.mdo")
	public String sendcarrotGet(@RequestParam("student_parentnumber") String student_parentnumber,
			Model model) {
		 StudentVO studentVO=new StudentVO();
		studentVO=studentService.studentList1(student_parentnumber);
		model.addAttribute("studentList",studentVO);
		return "admin/sendcarrot";
	}
	@ResponseBody
    @RequestMapping(value = "/insertcarrot.mdo", method = {RequestMethod.POST,RequestMethod.GET})
	public String insertcarrotGet(@ModelAttribute CarrotVO carrotVO) {
		
		carrotSerivce.carrotinsert(carrotVO);
		//sqlSessionTemplate.insert("carrot.carrotinsert",carrotVO);
		return "redirect:/carrotList.mdo?student_parentnumber="+carrotVO.getCarrot_number();
	}
	
}
