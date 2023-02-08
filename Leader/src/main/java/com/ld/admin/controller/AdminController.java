package com.ld.admin.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ld.admin.service.AdminService;
import com.ld.admin.service.StudentService;
import com.ld.admin.vo.StudentClassAllVO;
import com.ld.user.service.TeacherService;
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
	@Autowired 
	private TeacherService teacherService;
	//학생 정보
	@RequestMapping("/studentList.mdo")
	public ModelAndView studentList(HttpServletRequest request) {
		HttpSession session=request.getSession();
		TeacherVO teacherVO=(TeacherVO)session.getAttribute("loginTeacher");
		ModelAndView mav=new ModelAndView();
		//승인된 학원생 목록
		List<StudentVO> studentVO=new ArrayList();
		studentVO=studentService.studentApproveList();
		mav.addObject("studentList",studentVO);
		//가입대기 목록
		List<StudentVO> studentVO1=new ArrayList();
		studentVO1=studentService.studentStandByList();
		mav.addObject("studentStandByList",studentVO1);
		
		//퇴원생 목록
		List<StudentVO> studentVO2=new ArrayList();
		studentVO2=studentService.studentQuitList();
		mav.addObject("studentQuitList",studentVO2);
		
		//mav.addObject("studentList",studentVO);
		mav.setViewName("admin/studentList");
		return mav;
	}
	//학생클래스 추가
	@RequestMapping("/addClassForm.mdo")
	public ModelAndView addClassForm(@RequestParam("id")int id) {
		ModelAndView mav=new ModelAndView();
		List<ClassAllVO> classAllVO=new ArrayList();
		classAllVO=adminService.getClassAll();
		List<StudentClassVO> studentClassVO=new ArrayList();
			studentClassVO=studentService.studentClassName(id);
			String stuClass[]=studentClassVO.toArray(new String [studentClassVO.size()]);
			String classA[]=classAllVO.toArray(new String [classAllVO.size()]);
			//등록된 클래스 빼기
		for(int i=0;i<studentClassVO.size();i++) {
			for(int j=0;j<classAllVO.size();j++) {
					classAllVO.remove(stuClass[i]);
				
			}
		}
		
		mav.addObject("studentClass",studentClassVO);
		mav.addObject("classAll",classAllVO);
		mav.addObject("id",id);
		mav.setViewName("admin/addClass");
		return mav;
	}
	@RequestMapping("/addClass.mdo")
	public String addClass(@RequestParam("name")String []name,@RequestParam("id")int id) {
		ModelAndView mav=new ModelAndView();
		for(int i=0;i<name.length;i++) {
			studentService.insertStudentClass(id,name[i]);
		}
		
		return "redirect:/addClassForm.mdo?id="+id;
	}
	//학생 클래스 제거
	@RequestMapping("/deleteClassForm.mdo")
	public ModelAndView deleteClassForm(@RequestParam("id")int id) {
		ModelAndView mav=new ModelAndView();
		List<StudentClassVO> studentClassVO=new ArrayList();
		studentClassVO=studentService.studentClassName(id);
		mav.addObject("studentClass",studentClassVO);
		mav.addObject("id",id);
		mav.setViewName("admin/deleteClass");
		return mav;
	}
	@RequestMapping("/deleteClass.mdo")
	public String delete(@RequestParam("name")String []name,@RequestParam("id")int id) {
		ModelAndView mav=new ModelAndView();
		for(int i=0;i<name.length;i++) {
			studentService.deleteStudentClass(id,name[i]);
		}
		
		return "redirect:/deleteClassForm.mdo?id="+id;
	}
	//학생 관리
	//가입 승인
	@RequestMapping(value="/approve.mdo")
	public String approve(@RequestParam("id")int id) {
			studentService.approveJoinStudent(id);
		
		return "redirect:/studentList.mdo";
	}
	//학원생 탈퇴
	@RequestMapping(value="/quitStudent.mdo")
	public String quitStudent(@RequestParam("id")int id) {
		studentService.quitStudent(id);
		return "redirect:/studentList.mdo";
	}
	//학원생 재등록
	@RequestMapping("/reJoinStudent.mdo")
	public String reJoinStudent(@RequestParam("id")int id) {
		studentService.rejoinStudent(id);
		return "redirect:/studentList.mdo";
	}
	//학생 클래스 관리
	@RequestMapping("/studentClassList.mdo")
	public ModelAndView studentClassList(HttpServletRequest request) {
		HttpSession session=request.getSession();
		TeacherVO teacherVO=(TeacherVO)session.getAttribute("loginTeacher");
		ModelAndView mav=new ModelAndView();
		List<StudentVO> studentVO=new ArrayList();
		List<StudentClassVO> studentClassVO=new ArrayList();
		studentVO=studentService.studentList();
		List<StudentClassAllVO> studentClassAllVO=new ArrayList();
		studentClassAllVO=studentService.studentClassId();
		mav.addObject("studentClassList",studentClassAllVO);
		mav.setViewName("admin/studentClassList");
		return mav;
	}
	//강사 관리
	//강사 정보
	@RequestMapping(value="/teacherList.mdo")
	public ModelAndView teacherList() {
		ModelAndView mav=new ModelAndView();
		List<TeacherVO> teacherVO=new ArrayList();
		
		teacherVO=teacherService.teacherList();
		mav.addObject("teacherList",teacherVO);
		
		//가입대기 목록
				List<TeacherVO> teacherVO1=new ArrayList();
				teacherVO1=teacherService.teacherStandByList();
				mav.addObject("teacherStandByList",teacherVO1);
				
				//퇴원생 목록
				List<TeacherVO> teacherVO2=new ArrayList();
				teacherVO2=teacherService.teacherQuitList();
				mav.addObject("teacherQuitList",teacherVO2);
		mav.setViewName("admin/teacherList");
		return mav;
	}
	//가입 승인
		@RequestMapping(value="/approveTeacher.mdo")
		public String approveTeacher(@RequestParam("id")int id) {
			teacherService.approveJoinTeacher(id);
			
			return "redirect:/teacherList.mdo";
		}
		//강사 탈퇴
		@RequestMapping(value="/quitTeacher.mdo")
		public String quitTeacher(@RequestParam("id")int id) {
			teacherService.quitTeacher(id);
			return "redirect:/teacherList.mdo";
		}
		//강사 재등록
		@RequestMapping("/reJoinTeacher.mdo")
		public String reJoinTeacher(@RequestParam("id")int id) {
			teacherService.rejoinTeacher(id);
			return "redirect:/teacherList.mdo";
		}

}
