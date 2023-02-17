package com.ld.admin.controller;


import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
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
		//강사 업무 목록
		@RequestMapping(value="/teacherOrderList.mdo",method=RequestMethod.GET)
		public ModelAndView teacherOrderList1(@RequestParam(value="date",required=false)String date,
				HttpServletRequest request) {
			int id=0;
			HttpSession session=request.getSession();
			try {
				id=(int)session.getAttribute("id");
			}catch(Exception e){
			}
			TeacherVO teacherVO=(TeacherVO)session.getAttribute("loginTeacher");
			ModelAndView mav=new ModelAndView();
			//오늘의 업무
			List<ReportVO> reportVO1=new ArrayList();
			reportVO1=teacherService.todayOrderList(id);
			mav.addObject("todayOrderList",reportVO1);
			//데드라인 지난 미완성업무 강사 한명꺼 조회 
			List<ReportVO> reportVO2=new ArrayList();
			reportVO2=teacherService.incompleteOrderOne(id);
			mav.addObject("incompleteOrderOne",reportVO2);
			
			//장기프로젝트
			List<ReportVO> reportVO3=new ArrayList();
			reportVO3=teacherService.longOrderList(id);
			mav.addObject("longOrderList",reportVO3);
			//데일리 업무 추가, 이미 추가되었다면 추가하지 않음
			List<ReportVO> reportVO5=new ArrayList();
			reportVO5=teacherService.dailyOrderSampleList(id);
			System.out.println(Arrays.asList(reportVO5));
			List<ReportVO> reportVO4=new ArrayList();
			reportVO4=teacherService.dailyOrderList(id,date);
			System.out.println(Arrays.asList(reportVO4));
			String date2=date+" 00:00:00";
			Timestamp timestamp =Timestamp.valueOf(date2);
			if(reportVO4.isEmpty()) {
				for(int i=0;i<reportVO5.size();i++) {
teacherService.insertDailyOrder(reportVO5.get(i).getTeacher_id(),reportVO5.get(i).getTeacher_name(),reportVO5.get(i).getTitle(),timestamp);
				}
				
				
			}
			reportVO4=teacherService.dailyOrderList2(id,date);
			mav.addObject("dailyOrderList",reportVO4);
			mav.setViewName("admin/teacherOrderList");
			return mav;
		}
		//이전 업무 현황표
		@RequestMapping(value="/teacherOrderList2.mdo",method=RequestMethod.GET)
		public ModelAndView teacherOrderList2(@RequestParam(value="deadline",required=false)String deadline,
				HttpServletRequest request) {
			int id=0;
			HttpSession session=request.getSession();
			try {
				id=(int)session.getAttribute("id");
			}catch(Exception e){
			}
			TeacherVO teacherVO=(TeacherVO)session.getAttribute("loginTeacher");
			ModelAndView mav=new ModelAndView();
			
			if(!deadline.equals("날짜 선택(전체)")) {
				List<ReportVO> reportVO1=new ArrayList();
				reportVO1=teacherService.todayOrderList(id);
				mav.addObject("todayOrderList",reportVO1);
				//데드라인 지난 미완성업무 강사 한명꺼 조회 incompleteOrderOne
				List<ReportVO> reportVO2=new ArrayList();
				reportVO2=teacherService.incompleteOrderOneDate(id,deadline);
				mav.addObject("incompleteOrderOne",reportVO2);
				
				//장기프로젝트
				List<ReportVO> reportVO3=new ArrayList();
				reportVO3=teacherService.longOrderListDate(id,deadline);
				mav.addObject("longOrderList",reportVO3);
			}
			else {
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
			}
			mav.setViewName("admin/teacherOrderList");
			return mav;
		}
		//업무 제출
		@RequestMapping(value="/submitOrder.mdo",method=RequestMethod.GET)
		public ModelAndView imsi2(HttpServletRequest request,
				@RequestParam(value="date",required=false)String date,
				@RequestParam(value="id",required=false)int id[],
				@RequestParam(value="id2",required=false)int id2[],
				@RequestParam(value="postscript",required=false)String postscript,
				@RequestParam(value="teacher_name",required=false)String teacher_name,
				@RequestParam(value="content",required=false)String content[]) {
			System.out.println(Arrays.asList(content));
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
					if(id[i]!=0) {
						teacherService.fulfillEnd(id[i],content[i]);
					}
					
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
			mav.addObject("date",date);
			mav.setViewName("redirect:/teacherOrderList.mdo?id="+id3);
			return mav;
}		//어드민 업무 리스트
		@RequestMapping("/adminOrderList.mdo")
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
			//부서 목록
			List<TeacherVO> teacherVO2=new ArrayList();
			teacherVO2=teacherService.deptList();
			mav.addObject("deptList",teacherVO2);
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
			
			return "redirect:/adminOrderList.mdo";
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
			
			return "redirect:/adminOrderList.mdo";
		}
		//재전송
		@RequestMapping("/reOrder.mdo")
		public String reOrder(@RequestParam(value="id",required=false)int id[],
				HttpServletRequest request,
		@RequestParam("title")String title[],
		@RequestParam("content")String content[],
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
					reportVO.setContent(content[i]);
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
			return "redirect:/adminOrderList.mdo";
		}
		//새 업무 등록
		@RequestMapping(value="newOrder.mdo",method=RequestMethod.POST)
		public ModelAndView newOrder (@RequestParam(value="teacher_id",required=false)int teacher_id[],
				@RequestParam("title")String title[],
				@RequestParam("deadline")String deadline[],
				@RequestParam("deadline1")String deadline1,
				@RequestParam("importance")String importance[],
				@RequestParam("longorder")String longorder[],
				@RequestParam("dept")String dept[]) {
			System.out.println(teacher_id[0]);
			ModelAndView mav = new ModelAndView();
			for(int i=0;i<title.length;i++) {
				Timestamp timestamp=null;
				if(dept[i].equals("전체")&&!title[i].equals("")) {
					List<TeacherVO> teacherVO=teacherService.teacherList();
					for(int j=0;j<teacherVO.size();j++) {
						ReportVO reportVO=new ReportVO();
						reportVO.setImportance(importance[i]);
						reportVO.setLongorder(longorder[i]);
						reportVO.setTeacher_name(teacherVO.get(j).getName());
						reportVO.setTeacher_id(teacherVO.get(j).getId());
						reportVO.setTitle(title[i]);
						String deadline2=deadline1;
						if(deadline[i].equals("")||deadline[i].equals("날짜 선택")) {
							deadline2=deadline1+" 00:00:00";
							timestamp=Timestamp.valueOf(deadline2);
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
				else if(!dept[i].equals("전체")&&teacher_id[i]==0&&!title[i].equals("")) {
					List<TeacherVO> teacherVO=new ArrayList();
					teacherVO=teacherService.teacherDept(dept[i]);
					for(int j=0;j<teacherVO.size();j++) {
						ReportVO reportVO=new ReportVO();
						reportVO.setImportance(importance[i]);
						reportVO.setLongorder(longorder[i]);
						reportVO.setTeacher_name(teacherVO.get(j).getName());
						reportVO.setTeacher_id(teacherVO.get(j).getId());
						reportVO.setTitle(title[i]);
						String deadline2=deadline1;
						if(deadline[i].equals("")||deadline[i].equals("날짜 선택")) {
							deadline2=deadline1+" 00:00:00";
							timestamp=Timestamp.valueOf(deadline2);
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
				else if(!dept[i].equals("전체")&&teacher_id[i]!=0&&!title[i].equals("")) {
					TeacherVO teacherVO=teacherService.teacherOne(teacher_id[i]);
						ReportVO reportVO=new ReportVO();
						reportVO.setImportance(importance[i]);
						reportVO.setLongorder(longorder[i]);
						reportVO.setTeacher_name(teacherVO.getName());
						reportVO.setTeacher_id(teacherVO.getId());
						reportVO.setTitle(title[i]);
						String deadline2=deadline1;
						if(deadline[i].equals("")||deadline[i].equals("날짜 선택")) {
							deadline2=deadline1+" 00:00:00";
							timestamp=Timestamp.valueOf(deadline2);
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
			mav.setViewName("redirect:/adminOrderList.mdo");
			return mav;
		}
		//상시업무 추가
		@RequestMapping("/addDailyOrderForm.mdo")
		public ModelAndView addDailyOrderForm() {
			ModelAndView mav=new ModelAndView();
			
			List<TeacherVO> teacherVO=new ArrayList();
			teacherVO=teacherService.teacherList();
			mav.addObject("teacherList",teacherVO);
			mav.setViewName("admin/addDailyOrder");
			return mav;
		}
		@RequestMapping(value="/addDailyOrder.mdo")
		public ModelAndView addDailyOrder(@RequestParam("teacher_id")int teacher_id) {
			ModelAndView mav=new ModelAndView();
			List<ReportVO> reportVO =new ArrayList();
			reportVO=teacherService.dailyOrderSampleList(teacher_id);
			mav.addObject("dailyList",reportVO);
			mav.addObject("teacher_id",teacher_id);
			mav.setViewName("admin/addDailyOrderForm");
			return mav;
		}
		
		//데일리오더 샘플 등록
		@RequestMapping(value="/insertDailyOrder.mdo", method=RequestMethod.POST)
		public String insertDailyOrder(@RequestParam("teacher_id")int teacher_id,
				@RequestParam("title")String title[]) {
			TeacherVO teacherVO=teacherService.teacherOne(teacher_id);
			for(int i=0;i<title.length;i++) {
				teacherService.insertDailyOrderSample(teacher_id,title[i],teacherVO.getName());
			}
			
			
			return "redirect:/addDailyOrder.mdo?teacher_id="+teacher_id;
		}
		//데일리오더 샘플 삭제
		@RequestMapping("/deleteDailyOrder.mdo")
		public String deleteDailyOrder(@RequestParam("teacher_id")int teacher_id,
				@RequestParam("id")int id) {
			teacherService.deleteDailyOrder(id);
			return "redirect:/addDailyOrder.mdo?teacher_id="+teacher_id;
		}
		@RequestMapping("/upload/fileUpload")
	    public String fileUpload(@RequestParam("uploadFile") MultipartFile file, Model model) throws IOException {
	        String savedFileName = "";
	        // 1. 파일 저장 경로 설정 : 실제 서비스되는 위치(프로젝트 외부에 저장)
	        String uploadPath = "C:\\Users\\USER\\imsi\\";
	        // 2. 원본 파일 이름 알아오기
	        String originalFileName = file.getOriginalFilename();
	        // 3. 파일 이름 중복되지 않게 이름 변경(서버에 저장할 이름) UUID 사용
	        UUID uuid = UUID.randomUUID();
	        savedFileName = uuid.toString() + "_" + originalFileName;
	        // 4. 파일 생성
	        File file1 = new File(uploadPath + savedFileName);
	        // 5. 서버로 전송
	        file.transferTo(file1);
	        // model로 저장
	        model.addAttribute("originalFileName", originalFileName);
	        return"admin/fileUploadResult";
	    }
		@RequestMapping("download/fileDownloadListView")
	    public ModelAndView fileDownloadList() {
	        ModelAndView mv = new ModelAndView();
	        // 폴더에 있는 전체 파일 목록 가져오기
	        File path = new File("C:\\Users\\USER\\imsi\\");
	        String[] fileList = path.list();

	        mv.addObject("fileList", fileList);
	        mv.setViewName("admin/teacherOrderList");
	        return mv;
	    }
	    // 파일 다운로드 처리
	    @RequestMapping("/fileDownload/{file}")
	    public void fileDownload(@PathVariable String file,
	                             HttpServletResponse response) throws IOException {                                   
	        File f = new File("C:\\Users\\USER\\imsi\\", file);
	        // file 다운로드 설정
	        response.setContentType("application/download");
	        response.setContentLength((int)f.length());
	        response.setHeader("Content-disposition", "attachment;filename=\"" + file + "\"");
	        // response 객체를 통해서 서버로부터 파일 다운로드
	        OutputStream os = response.getOutputStream();
	        // 파일 입력 객체 생성
	        FileInputStream fis = new FileInputStream(f);
	        FileCopyUtils.copy(fis, os);
	        fis.close();
	        os.close();
	    }
	    
}
		
