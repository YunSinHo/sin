package com.ld.admin.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ld.admin.service.AdminService;
import com.ld.admin.service.StudentService;
import com.ld.user.vo.ClassAllVO;
import com.ld.user.vo.StudentClassVO;
import com.ld.user.vo.StudentVO;
import com.ld.user.vo.TeacherVO;

@Controller
public class AdminController {

	@Autowired
	private StudentService studentService;
	@Autowired
	private AdminService adminService;
	//학생 정보
	@RequestMapping("/studentList.mdo")
	public ModelAndView studentList(HttpServletRequest request) {
		HttpSession session=request.getSession();
		TeacherVO teacherVO=(TeacherVO)session.getAttribute("loginTeacher");
		ModelAndView mav=new ModelAndView();
		List<StudentVO> studentVO=new ArrayList();
		List<StudentClassVO> studentClassVO=new ArrayList();
		studentVO=studentService.studentList();
		
		//mav.addObject("studentClass",studentClass);
		mav.addObject("studentList",studentVO);
		mav.setViewName("admin/studentList");
		return mav;
	}
	//학생 상세정보&클래스
	@RequestMapping("/studentInfo.mdo")
	public ModelAndView studentInfo(@RequestParam("id")int id) {
		ModelAndView mav=new ModelAndView();
		
		List<StudentClassVO> studentClassVO=new ArrayList();
		studentClassVO=studentService.studentClassList(id);
		mav.addObject("id",id);
		mav.addObject("studentClass",studentClassVO);
		mav.setViewName("admin/studentClass");
		
		return mav;
	}
	//학생클래스 추가
	@RequestMapping("/addClass.mdo")
	public ModelAndView addClass(@RequestParam("id")int id) {
		ModelAndView mav=new ModelAndView();
		List<ClassAllVO> classAllVO=new ArrayList();
		classAllVO=adminService.getClassAll();
		List<StudentClassVO> studentClassVO=new ArrayList();
		studentClassVO=studentService.studentClassName(id);
		mav.addObject("studentClass",studentClassVO);
		mav.addObject("classAll",classAllVO);
		mav.addObject("id",id);
		mav.setViewName("admin/addClass");
		System.out.println(studentClassVO.get(0));
		return mav;
	}
}
