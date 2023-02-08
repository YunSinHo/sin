package com.ld.admin.controller;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ld.admin.vo.ReportVO;
import com.ld.user.service.TeacherService;
import com.ld.user.vo.TeacherVO;

@Controller
public class orderWorkController {

	@Autowired
	private TeacherService teacherService;
	@RequestMapping(value="/orderWork.mdo")
	public ModelAndView teacherList() {
		ModelAndView mav=new ModelAndView();
		List<TeacherVO> teacherVO=new ArrayList();
		
		teacherVO=teacherService.teacherList();
		mav.addObject("teacherList",teacherVO);
		mav.setViewName("admin/orderWork");
		return mav;
	}
	//업무지시 폼
	@RequestMapping("/orderWorkForm.mdo")
	public String orderWorkForm(Model model,@RequestParam("id")int id) {
		TeacherVO teacherVO=teacherService.teacherOne(id);
		model.addAttribute("teacher",teacherVO);
		return "admin/orderWorkForm";
	}
	//업무 지시
	@RequestMapping("/orderWorkOne.mdo")
	public ModelAndView orderWorkOne(@RequestParam("id")int id,@RequestParam("name")String name
			,@RequestParam("title")String title
			,@RequestParam("content")String content) {
		ModelAndView mav =new ModelAndView();
		ReportVO reportVO=new ReportVO();
		reportVO.setContent(content);
		reportVO.setTeacher_id(id);
		reportVO.setTeacher_name(name);
		reportVO.setTitle(title);
		teacherService.orderWorkOne(reportVO);
		mav.setViewName("redirect:/orderWorkList.mdo");
		return mav;
	}
	//업무지시 목록
	@RequestMapping(value="/orderWorkList.mdo")
	public ModelAndView orderWorkList() {
		ModelAndView mav =new ModelAndView();
		List<ReportVO> reportVO=new ArrayList();
		reportVO=teacherService.reportList();
		mav.addObject("reportList",reportVO);
		mav.setViewName("admin/orderWorkList");
		return mav;
	}
	//업무지시 목록날짜 변경
		@RequestMapping(value="/changeDate.mdo")
		public ModelAndView changeDate(@RequestParam("choiceDate")String choiceDate) {
			
			ModelAndView mav =new ModelAndView();
			List<ReportVO> reportVO=new ArrayList();
			reportVO=teacherService.reportListDate(choiceDate);
			mav.addObject("reportList",reportVO);
			mav.setViewName("admin/orderWorkList");
			return mav;
		}
	//업무지시 한개 보기
	@RequestMapping("/orderListOne.mdo")
	public ModelAndView orderListOne(@RequestParam("id")int id) {
		ModelAndView mav=new ModelAndView();
		ReportVO reportVO=new ReportVO();
		reportVO=teacherService.orderListOne(id);
		mav.addObject("orderListOne",reportVO);
		mav.setViewName("admin/orderListOne");
		return mav;
	}
	//강사 한명 업무목록
	@RequestMapping("/orderListTeacherOne.mdo")
	public ModelAndView orderListTeacherOne(@RequestParam("id")int id) {
		ModelAndView mav=new ModelAndView();
		
		List<ReportVO> reportVO=new ArrayList();
		reportVO=teacherService.orderListTeacherOne(id);
		mav.addObject("reportList",reportVO);
		mav.setViewName("admin/orderListTeacherOne");
		return mav;
	}
	//강사가 업무목록중 한개 읽기
		@RequestMapping("/orderListOneRead.mdo")
		public ModelAndView orderListOneRead(@RequestParam("id")int id,HttpServletRequest request) {
			HttpSession session=request.getSession();
			
			ModelAndView mav=new ModelAndView();
			ReportVO reportVO1=new ReportVO();
			reportVO1=teacherService.orderListOne(id);
			//check가 o가 아니라면 o로 업데이트
			if(!reportVO1.getCheck().equals("o"))
			teacherService.checkOrder(id);
			
			List<ReportVO> reportVO=new ArrayList();
			reportVO=teacherService.orderListCheckTeacherOne(reportVO1.getTeacher_id());
			session.setAttribute("reportList1",reportVO);
			int newOrder=reportVO.size();
			System.out.println(newOrder);
			String newOrder1=newOrder+"+";
			session.setAttribute("newOrder",newOrder1);
			
			mav.addObject("orderListOne",reportVO1);
			mav.setViewName("admin/orderListOne");
			return mav;
		
}
		//강사가 업무 완료 보고
		@RequestMapping("/orderSuccess.mdo")
		public ModelAndView orderSuccess(@RequestParam("id")int id,HttpServletRequest request) {
			HttpSession session=request.getSession();
			int id1=(int)session.getAttribute("id");
			ModelAndView mav=new ModelAndView();
			
			teacherService.fulfillEnd(id);
			
			mav.setViewName("redirect:/orderListTeacherOne.mdo?id="+id1);
			return mav;
		}
		//
		@RequestMapping("/successFinal.mdo")
		public String successFinal(@RequestParam("id")int id) {
			
			teacherService.successFinal(id);
			
			return "redirect:/orderWorkList.mdo";
		}
		//오늘 업무 등록하기
		@RequestMapping("/todayOrder.mdo")
		public ModelAndView todayOrder() {
			ModelAndView mav =new ModelAndView();
			List<ReportVO> reportVO=new ArrayList();
			//공동업무 리스트
			reportVO=teacherService.jointOrderList();
			List<TeacherVO> teacherVO=new ArrayList();
			//강사 리스트
			teacherVO=teacherService.teacherList();
			mav.addObject("teacherList",teacherVO);
			mav.addObject("jointOrderList",reportVO);
			mav.setViewName("admin/todayOrder");
			return mav;
		}
		//공동업무 추가
		@RequestMapping("/addJointOrderForm.mdo")
		public ModelAndView addJointOrderForm() {
			ModelAndView mav=new ModelAndView();
			mav.setViewName("admin/addJointOrder");
			return mav;
		}
		
		@RequestMapping("/addJointOrder.mdo")
		public ModelAndView addJointOrder(@RequestParam("title")String title[]) {
			ModelAndView mav=new ModelAndView();
			System.out.println(Arrays.asList(title));
			for(int i=0;i<title.length;i++) {
				if(!title[i].equals(""))
				teacherService.addJointOrder(title[i]);
			}
			
			mav.setViewName("admin/addJointOrder");
			return mav;
		}
		//공동업무 삭제
		@RequestMapping("/deleteJointOrder.mdo")
		public String deletejointOrder(@RequestParam("id")int id) {
			teacherService.deletejointOrder(id);
			
			return "redirect:/todayOrder.mdo";
		}
		//오늘의 업무 등록
		@RequestMapping(value="/addTodayOrder.mdo",method=RequestMethod.POST)
		public ModelAndView addTodayOrder(
				@RequestParam("teacher_id")int teacher_id[],
				@RequestParam("title")String title[]
				) {
		System.out.println(Arrays.toString(teacher_id));
			System.out.println(Arrays.asList(title));
			String teacher_name[]=new String[title.length];
			for(int i=0;i<title.length;i++) {
				if(teacher_id[i]==0) {
					
					teacher_name[i]="all";
				}
				else {
					TeacherVO teacherVO=teacherService.teacherOne(teacher_id[i]);
					if(teacher_id[i]==9999) {teacher_name[i]="9999";}
					else teacher_name[i]=teacherVO.getName();
				}
			}
			for(int i=0;i<title.length;i++) {
				if(teacher_id[i]!=9999&&!title[i].equals("")) {
					ReportVO reportVO=new ReportVO();
					reportVO.setTitle(title[i]);
					reportVO.setTeacher_id(teacher_id[i]);
					reportVO.setTeacher_name(teacher_name[i]);
					teacherService.addTodayOrder(reportVO);
					
				}
			}
			ModelAndView mav =new ModelAndView();
			
			System.out.println(Arrays.asList(teacher_name));
			
			return mav;
		}
}
		
