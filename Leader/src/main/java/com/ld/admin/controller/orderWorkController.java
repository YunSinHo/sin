package com.ld.admin.controller;


import java.sql.Timestamp;
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

import com.ld.admin.vo.PostscriptVO;
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
		
		//강사가 완료보고한 업무 목록
		List<ReportVO> reportVO1=new ArrayList();
		reportVO1=teacherService.finishOrderTeacher();
		mav.addObject("finishOrderTeacher",reportVO1);
		//데드라인이 지난 미완성 업무 목록
		List<ReportVO> reportVO2=new ArrayList();
		reportVO2=teacherService.incompleteOrder();
		mav.addObject("incompleteOrder",reportVO2);
		//진행중인 업무
		List<ReportVO> reportVO3=new ArrayList();
		reportVO3=teacherService.ongoingOrder();
		mav.addObject("ongoingOrder",reportVO3);
		System.out.print(reportVO1.get(0).getTitle());
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
			
			
			//강사가 완료보고한 업무 목록
			List<ReportVO> reportVO1=new ArrayList();
			reportVO1=teacherService.finishOrderTeacher(choiceDate);
			mav.addObject("finishOrderTeacher",reportVO1);
			//데드라인이 지난 미완성 업무 목록
			List<ReportVO> reportVO2=new ArrayList();
			reportVO2=teacherService.incompleteOrder(choiceDate);
			mav.addObject("incompleteOrder",reportVO2);
			//진행중인 업무
			List<ReportVO> reportVO3=new ArrayList();
			reportVO3=teacherService.ongoingOrder(choiceDate);
			mav.addObject("ongoingOrder",reportVO3);

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
		//개인업무
		List<ReportVO> reportVO=new ArrayList();
		reportVO=teacherService.orderListTeacherOne(id);
		mav.addObject("reportList",reportVO);
		//공동업무
		List<ReportVO> reportVO1=new ArrayList();
		reportVO1=teacherService.realJointOrderList();
		mav.addObject("realJointOrderList",reportVO1);
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
			mav.setViewName("redirect:/orderListOne.mdo?id="+id);
			return mav;
		
}
		//강사가 업무 완료 보고
		@RequestMapping("/orderSuccess.mdo")
		public ModelAndView orderSuccess(@RequestParam("id")int id,HttpServletRequest request,
				@RequestParam("teacher_name")String teacher_name,
				@RequestParam(value="replyteacher",required=false)String replyteacher) {
			HttpSession session=request.getSession();
			int id1=(int)session.getAttribute("id");
			TeacherVO teacherVO =teacherService.teacherOne(id1);
			
			
			ModelAndView mav=new ModelAndView();
			ReportVO reportVO=new ReportVO();
			reportVO.setReplyteacher(replyteacher);
			reportVO.setId(id);
			if(teacher_name.equals("전체")) {
				reportVO.setTeacher_name(teacherVO.getName());
			}
			else
			reportVO.setTeacher_name(teacher_name);
			//teacherService.fulfillEnd(reportVO);
			System.out.println(replyteacher+" "+teacher_name+" "+id);
			
			mav.setViewName("redirect:/orderListTeacherOne.mdo?id="+id1);
			return mav;
		}
		//업무 최종완료 업데이트
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
				@RequestParam("title")String title[],
						@RequestParam("deadline")String deadline) {
			Timestamp timestamp=null;
				deadline=deadline+" 00:00:00";
				timestamp = Timestamp.valueOf(deadline);
			
			
		System.out.println(Arrays.toString(teacher_id));
			System.out.println(Arrays.asList(title));
			String teacher_name[]=new String[title.length];
			for(int i=0;i<title.length;i++) {
				if(teacher_id[i]==0) {
					
					teacher_name[i]="전체";
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
					reportVO.setDeadline(timestamp);
					reportVO.setTeacher_id(teacher_id[i]);
					reportVO.setTeacher_name(teacher_name[i]);
					teacherService.addTodayOrder(reportVO);
					
				}
			}
			ModelAndView mav =new ModelAndView();
			
			System.out.println(Arrays.asList(teacher_name));
			mav.setViewName("redirect:/orderWorkList.mdo");
			return mav;
		}
		//업무 재전송
		/*@RequestMapping("/reOrder.mdo")
		public String reOrder(@RequestParam("id")int id,HttpServletRequest request,
		@RequestParam("teacher_name")String teacher_name,
		@RequestParam(value="reply",required=false)String reply,
		@RequestParam(value="deadline",required=false)String deadline) {
			Timestamp timestamp=null;
			if(!deadline.equals("")) {
				deadline=deadline+" 00:00:00";
				timestamp = Timestamp.valueOf(deadline);
			}
			
			ReportVO reportVO=new ReportVO();
			reportVO.setReply(reply);
			reportVO.setDeadline(timestamp);
			reportVO.setId(id);
			reportVO.setTeacher_name(teacher_name);
			teacherService.reOrder(reportVO);
			return "redirect:/orderWorkList.mdo";
		}*/
		@RequestMapping(value="/imsi",method=RequestMethod.GET)
		public ModelAndView imsi(HttpServletRequest request) {
			int id=0;
			HttpSession session=request.getSession();
			try {
				id=(int)session.getAttribute("id");
			}catch(Exception e){
			}
			TeacherVO teacherVO=(TeacherVO)session.getAttribute("loginTeacher");
			ModelAndView mav=new ModelAndView();
			//당일업무
			List<ReportVO> reportVO1=new ArrayList();
			reportVO1=teacherService.todayOrderList(id);
			mav.addObject("todayOrderList",reportVO1);
			//데드라인 지난 미완성업무 강사 한명꺼 조회 incompleteOrderOne
			List<ReportVO> reportVO2=new ArrayList();
			reportVO2=teacherService.incompleteOrderOne(id);
			mav.addObject("incompleteOrderOne",reportVO2);
			
			//장기프로젝트
			List<ReportVO> reportVO3=new ArrayList();
			reportVO3=teacherService.longOrderList(id);
			mav.addObject("longOrderList",reportVO3);
			mav.setViewName("admin/teacherOrderList");
			return mav;
		}
		//업무 제출
		@RequestMapping(value="/imsi2",method=RequestMethod.GET)
		public ModelAndView imsi2(HttpServletRequest request,
				@RequestParam(value="id",required=false)int id[],
				@RequestParam(value="id2",required=false)int id2[],
				@RequestParam(value="postscript",required=false)String postscript,
				@RequestParam(value="teacher_name",required=false)String teacher_name) {
			ModelAndView mav=new ModelAndView();
			HttpSession session=request.getSession();
			int id3=0;
			try {
				 id3=(int)session.getAttribute("id");
			}catch(Exception e){
				
			}
			
			try {
				String fulfill[]= new String[id2.length];
				for(int i=0;i<id2.length;i++) {
					fulfill[i]=request.getParameter("fulfill"+id2[i]);
				}
				for(int i=0;i<id2.length;i++) {
					ReportVO reportVO=new ReportVO();
					reportVO.setFulfill(fulfill[i]);
					reportVO.setId(id2[i]);
					teacherService.longOrderFulfill(reportVO);
				}
			}catch(Exception e) {
				
			}
			try {
				for(int i=0;i<id.length;i++) {
					teacherService.fulfillEnd(id[i]);
				}
			}catch(Exception e) {
				
			}
			if(!postscript.equals("")) {
			PostscriptVO postscriptVO=new PostscriptVO();
			postscriptVO.setTeacher_id(id3);
			postscriptVO.setTeacher_name(teacher_name);
			postscriptVO.setContent(postscript);
			teacherService.insertPostscript(postscriptVO);
			}
			mav.setViewName("redirect:/imsi?id="+id3);
			return mav;
}
		@RequestMapping("/imsi3")
		public ModelAndView imsi3() {
			ModelAndView mav=new ModelAndView();
			
			//강사가 완료보고한 업무 목록
			List<ReportVO> reportVO1=new ArrayList();
			reportVO1=teacherService.finishOrderTeacher();
			mav.addObject("finishOrderTeacher",reportVO1);
			//데드라인이 지난 미완성 업무 목록
			List<ReportVO> reportVO2=new ArrayList();
			reportVO2=teacherService.incompleteOrder();
			mav.addObject("incompleteOrder",reportVO2);
			//진행중인 업무
			List<ReportVO> reportVO3=new ArrayList();
			reportVO3=teacherService.ongoingOrder();
			mav.addObject("ongoingOrder",reportVO3);
			//진행중인 장기 프로젝트
			List<ReportVO> reportVO4=new ArrayList();
			reportVO4=teacherService.longOrderListAll();
			mav.addObject("longOrderListAll",reportVO4);
			
			//특이사항(추신)
			List<PostscriptVO> postscriptVO =new ArrayList();
			postscriptVO=teacherService.postscriptList();
			mav.addObject("postscriptList",postscriptVO);
			
			//강사 목록
			List<TeacherVO> teacherVO =new ArrayList();
			teacherVO=teacherService.teacherList();
			mav.addObject("teacherList",teacherVO);
			mav.setViewName("admin/adminOrderList");
			return mav;
		}
		//업무 삭제
		@RequestMapping("/deleteOrder.mdo")
		public String deleteOrder(@RequestParam(value="id",required=false)int id[]) {
			
			try {
				for(int i=0; i<id.length;i++) {
					teacherService.deleteOrder(id[i]);
					
				}
			}catch(Exception e) {
				
			}
			
			return "redirect:/imsi3";
		}
		//특이사항(추신)삭제
		@RequestMapping("/deletePostscript.mdo")
		public String deletePostscript(@RequestParam(value="post_id",required=false)int id[]) {
			
			try {
				for(int i=0; i<id.length;i++) {
					teacherService.deletePostscript(id[i]);
				}
			}catch(Exception e) {
				
			}
			
			return "redirect:/imsi3";
		}
		//재전송
		@RequestMapping("/reOrder.mdo")
		public String reOrder(@RequestParam(value="id",required=false)int id[],
				HttpServletRequest request,
		@RequestParam("title")String title[],
		@RequestParam("teacher_id")int teacher_id[],
		@RequestParam(value="deadline",required=false)String deadlineArr[]) {
			System.out.println(title[0]);
			Timestamp timestamp=null;
			for(int i=0;i<deadlineArr.length;i++) {
				
			}
			
			for(int i=0;i<id.length;i++) {
				if(id[i]!=0) {
					TeacherVO teacherVO=teacherService.teacherOne(teacher_id[i]);
					ReportVO reportVO=new ReportVO();
					reportVO.setId(id[i]);
					reportVO.setTeacher_name(teacherVO.getName());
					reportVO.setTeacher_id(teacher_id[i]);
					reportVO.setTitle(title[i]);
					String deadline=deadlineArr[i];
					if(deadlineArr[i].contains("-")) {
						deadline=deadline+" 00:00:00";
						timestamp=Timestamp.valueOf(deadline);
						reportVO.setDeadline(timestamp);
					}
					else reportVO.setDeadline(timestamp);
					teacherService.reOrder(reportVO);
				}
			}
			return "redirect:/imsi3";
		}
		@RequestMapping(value="newOrder.mdo",method=RequestMethod.POST)
		public ModelAndView newOrder (@RequestParam("teacher_id")int teacher_id[],
				@RequestParam("title")String title[],
				@RequestParam("deadline")String deadline[],
				@RequestParam("deadline1")String deadline1) {
			ModelAndView mav = new ModelAndView();
			for(int i=0;i<teacher_id.length;i++) {
				Timestamp timestamp=null;
				if(teacher_id[i]!=0&&!title[i].equals("")) {
					TeacherVO teacherVO=teacherService.teacherOne(teacher_id[i]);
					ReportVO reportVO=new ReportVO();
					reportVO.setTeacher_name(teacherVO.getName());
					reportVO.setTeacher_id(teacher_id[i]);
					reportVO.setTitle(title[i]);
					if(deadline[i].equals("")||deadline[i].equals("날짜 선택")) {
						deadline1=deadline1+" 00:00:00";
						timestamp=Timestamp.valueOf(deadline1);
						reportVO.setDeadline(timestamp);
					}
					else {
						deadline[i]=deadline[i]+" 00:00:00";
						timestamp=Timestamp.valueOf(deadline[i]);
						reportVO.setDeadline(timestamp);
					}
					teacherService.addTodayOrder(reportVO);
					
				}
			}
			mav.setViewName("redirect:/imsi3");
			return mav;
		}
}
		
