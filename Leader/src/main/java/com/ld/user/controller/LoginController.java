package com.ld.user.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ld.admin.service.AdminService;
import com.ld.admin.service.StudentService;
import com.ld.user.vo.ClassAllVO;
import com.ld.user.vo.StudentClassVO;
import com.ld.user.vo.StudentVO;
import com.ld.user.vo.TeacherVO;

@Controller
public class LoginController {
	@Autowired
	private StudentService studentService;
	@Autowired
	private AdminService adminService;
	//시작페이지
	@RequestMapping("/")
	public String start() {
		
		return "user/userindex";
	}
	//회원가입
	@RequestMapping("/joinForm.do")
	public String joinForm() {
		
		return "user/join";
	}
	@RequestMapping("/joinStudentForm.do")
	public String joinStudentForm() {
		
		return "user/joinStudent";
	}
	@RequestMapping("/joinTeacherForm.do")
	public String joinTeacherForm() {
		
		return "user/joinTeacher";
	}
	//학원생 가입
	@RequestMapping(value="/joinStudent.do" ,method = {RequestMethod.POST,RequestMethod.GET})
	public String joinStudent(@RequestParam("name")String name,
			@RequestParam("id")String id,
			@RequestParam("password")String password,
			@RequestParam("number")String number,
			@RequestParam("parentnumber")String parentnumber,
			@RequestParam("school")String school,
			@RequestParam("grade")String grade
			,HttpServletRequest request
			) {
		String url="user/joinStudent";
		HttpSession session=request.getSession();
		ModelAndView mav=new ModelAndView();
		List<StudentVO> studentVO1=new ArrayList();
		studentVO1=studentService.studentList();
		StudentVO studentVO2=new StudentVO();
		for(int i=0;i<studentVO1.size();i++) {
			if(studentVO1.get(i).getParentnumber().equals(parentnumber)&&studentVO1.get(i).getName().equals(name)) {
				request.setAttribute("message","이미 가입된 아이디가 존재합니다.");
				return "user/joinStudent";
			}
			
		}
		studentVO2.setGrade(grade);
		studentVO2.setStuid(id);
		studentVO2.setName(name);
		studentVO2.setNumber(number);
		studentVO2.setParentnumber(parentnumber);
		studentVO2.setSchool(school);
		studentVO2.setPassword(password);
		studentService.insertStudent(studentVO2);
		url="user/login";
		request.setAttribute("message","회원가입 완료.");
		return url;
	}
	//강사 가입
	@RequestMapping(value="joinTeacher.do" ,method = {RequestMethod.POST,RequestMethod.GET})
	public String joinTeacher(@RequestParam("name")String name,
			@RequestParam("id")String id,
			@RequestParam("password")String password,
			@RequestParam("number")String number,
			HttpServletRequest request) {
		String url="user/joinTeacher";
		HttpSession session=request.getSession();
		ModelAndView mav=new ModelAndView();
		List<TeacherVO> teacherVO1=new ArrayList();
		teacherVO1=adminService.teacherList();
		TeacherVO teacherVO2=new TeacherVO();
		for(int i=0;i<teacherVO1.size();i++) {
			if(teacherVO1.get(i).getNumber().equals(number)) {
				request.setAttribute("message","이미 가입된 아이디가 존재합니다.");
				return "user/joinTeacher";
			}
			
		}
		teacherVO2.setTeaid(id);
		teacherVO2.setName(name);
		teacherVO2.setNumber(number);
		teacherVO2.setPassword(password);
		adminService.insertTeacher(teacherVO2);
		url="user/login";
		request.setAttribute("message","회원가입 완료.");
		return url;
	}
	//학생 아이디 중복 체크
	@RequestMapping("/idCheck.do")
	public String idCheck(@RequestParam("id")String id,@RequestParam("name")String name,Model model,HttpServletRequest request) {
		
		List<StudentVO> studentVO=studentService.studentList();
		for(int i=0;i<studentVO.size();i++) {
			if(studentVO.get(i).getStuid().equals(id)) {
				request.setAttribute("result", 1);
			}
			else request.setAttribute("result", -1);
		}
		
		request.setAttribute("name", name); 
		request.setAttribute("id", id); 
		return "user/joinStudent";
	}
	//강사 아이디 중복 체크
	@RequestMapping("/idCheckTeacher.do")
	public String idCheckTeacher(@RequestParam("id")String id,@RequestParam("name")String name,Model model,HttpServletRequest request) {
		
		List<TeacherVO> teacherVO=adminService.teacherList();
		for(int i=0;i<teacherVO.size();i++) {
			if(teacherVO.get(i).getTeaid().equals(id)) {
				request.setAttribute("result", 1);
			}
			else request.setAttribute("result", -1);
		}
		request.setAttribute("name", name); 
		request.setAttribute("id", id); 
		return "user/joinTeacher";
	}
	//로그인
	@RequestMapping("/loginForm.do")
	public String loginForm() {
		
		return "user/login";
	}
	@PostMapping("/login.do")
	public String login(@RequestParam("id")String id,
			@RequestParam("password")String password,
			@RequestParam("choice")String choice,
			HttpServletRequest request,
			Model model) {
		StudentVO studentVO=new StudentVO();
		TeacherVO teacherVO=new TeacherVO();
		HttpSession session=request.getSession();
		String url="user/login";
		List<StudentClassVO> studentClassVO =new ArrayList();
		if(choice.equals("학생")) {
			studentVO=studentService.loginStudent(id,password);
			if(studentVO==null) {
				request.setAttribute("message","아이디가 존재하지 않습니다.");
			}
			else if(studentVO.getAvailable().equals("o")) {
			session.setAttribute("loginStudent",studentVO);
			//클래스 목록
			studentClassVO=studentService.studentClassList(studentVO.getId());
			session.setAttribute("studentClass",studentClassVO);
			url="redirect:/tables.mdo";
			}
		}
		else {
			teacherVO=adminService.loginTeacher(id,password);
			if(teacherVO==null){
				request.setAttribute("message","아이디가 존재하지 않습니다.");
		}
			else if(teacherVO.getAvailable().equals("o")) {
				
				session.setAttribute("loginTeacher",teacherVO);
				//클래스 목록
				List<ClassAllVO> classAllVO=new ArrayList();
				classAllVO=adminService.getClassAll();
				session.setAttribute("teacherClass",classAllVO);
				url="redirect:/tables.mdo";
			}
		
	}
		return url;
}
	@RequestMapping("/logout.do")
	public String logout(HttpServletRequest request) {
		HttpSession session=request.getSession();
		session.invalidate();
		return "redirect:/tables.mdo";
	}
}
