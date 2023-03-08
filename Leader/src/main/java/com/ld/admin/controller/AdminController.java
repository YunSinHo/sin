package com.ld.admin.controller;



import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ld.admin.service.AdminService;
import com.ld.admin.service.ScheduleService;
import com.ld.admin.service.StudentService;
import com.ld.admin.vo.ClassPlanningVO;
import com.ld.admin.vo.StudentClassAllVO;
import com.ld.admin.vo.StudentClassListVO;
import com.ld.admin.vo.Student_ClassVO;
import com.ld.user.service.TeacherService;
import com.ld.user.vo.ClassAllVO;
import com.ld.user.vo.StudentVO;
import com.ld.user.vo.StudentWordClassVO;
import com.ld.user.vo.TeacherVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class AdminController {


    private final ScheduleService scheduleService;
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
	//학생 단어클래스 추가
	@RequestMapping("/addWordClassForm.mdo")
	public ModelAndView addWordClassForm(@RequestParam("id")int id) {
		ModelAndView mav=new ModelAndView();
		List<ClassAllVO> classAllVO=new ArrayList();
		classAllVO=adminService.getClassAll();
		List<StudentWordClassVO> studentClassVO=new ArrayList();
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
		mav.setViewName("admin/addWordClass");
		return mav;
	}
	@RequestMapping("/addWordClass.mdo")
	public String addWordClass(@RequestParam("name")String []name,@RequestParam("id")int id) {
		for(int i=0;i<name.length;i++) {
			studentService.insertStudentWordClass(id,name[i]);
		}
		
		return "redirect:/addClassWordForm.mdo?id="+id;
	}
	//학생 단어클래스 제거
	@RequestMapping("/deleteWordClassForm.mdo")
	public ModelAndView deleteWordClassForm(@RequestParam("id")int id) {
		ModelAndView mav=new ModelAndView();
		List<StudentWordClassVO> studentClassVO=new ArrayList();
		studentClassVO=studentService.studentClassName(id);
		mav.addObject("studentClass",studentClassVO);
		mav.addObject("id",id);
		mav.setViewName("admin/deleteWordClass");
		return mav;
	}
	@RequestMapping("/deleteWordClass.mdo")
	public String delete(@RequestParam("name")String []name,@RequestParam("id")int id) {
		ModelAndView mav=new ModelAndView();
		for(int i=0;i<name.length;i++) {
			studentService.deleteStudentWordClass(id,name[i]);
		}
		
		return "redirect:/deleteClassWordForm.mdo?id="+id;
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
	//학생 단어클래스 관리
	@RequestMapping("/studentWordClassList.mdo")
	public ModelAndView studentWordClassList(HttpServletRequest request) {
		HttpSession session=request.getSession();
		TeacherVO teacherVO=(TeacherVO)session.getAttribute("loginTeacher");
		ModelAndView mav=new ModelAndView();
		List<StudentVO> studentVO=new ArrayList();
		List<StudentWordClassVO> studentClassVO=new ArrayList();
		studentVO=studentService.studentList();
		List<StudentClassAllVO> studentClassAllVO=new ArrayList();
		studentClassAllVO=studentService.studentClassId();
		mav.addObject("studentClassList",studentClassAllVO);
		mav.setViewName("admin/studentWordClassList");
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
		@RequestMapping(value="/approveTeacher.mdo",method=RequestMethod.POST)
		public String approveTeacher(@RequestParam("id")int id) {
			teacherService.approveJoinTeacher(id);
			
			return "redirect:/teacherList.mdo";
		}
		//강사 탈퇴
		@RequestMapping(value="/quitTeacher.mdo",method=RequestMethod.POST)
		public String quitTeacher(@RequestParam("id")int id) {
			teacherService.quitTeacher(id);
			return "redirect:/teacherList.mdo";
		}
		//강사 재등록
		@RequestMapping(value="/reJoinTeacher.mdo",method=RequestMethod.POST)
		public String reJoinTeacher(@RequestParam("id")int id) {
			System.out.println(id);
			teacherService.rejoinTeacher(id);
			return "redirect:/teacherList.mdo";
		}
		
	//클래스 계획세우기
		@RequestMapping(value="/studyPlan.mdo",method=RequestMethod.GET)
		public ModelAndView addStudyPlanning() {
			ModelAndView mav=new ModelAndView();
			List<Student_ClassVO> studentClassVO=new ArrayList();
			studentClassVO=adminService.studentClassList();
			mav.addObject("classList",studentClassVO);
			mav.setViewName("admin/addStudyPlan");
			return mav;
		}
		@RequestMapping(value="/addStudyPlan.mdo" ,method=RequestMethod.POST)
		public ModelAndView imsi4(@RequestParam("day")String day,
				@RequestParam("date")String date,
				@RequestParam("choiceDay")String choiceDay[],
				@RequestParam("classId")int classId[],
				@RequestParam("bookName")String bookName,
				@RequestParam("title")String []title) {
			Timestamp timestamp=null; 
			date=date+" 00:00:00";
			String className[]=new String[classId.length];
			List<Student_ClassVO> studentClassVO=new ArrayList();
			studentClassVO=adminService.studentClassList();
			for(int j=0;j<classId.length;j++) {
			for(int i=0;i<studentClassVO.size();i++) {
					if(studentClassVO.get(i).getId()==classId[j]) {
						className[j]=studentClassVO.get(i).getName();
						
					}
				}
			}
			timestamp=Timestamp.valueOf(date);
			System.out.println(day+"+"+date+" "+Arrays.asList(choiceDay));
			int arr[]= {1,2,3,4,5,6,7};
			int choiceArr[]=new int[choiceDay.length];
			String dayArr[]= {"일","월","화","수","목","금","토"};
			for(int i=0;i<choiceDay.length;i++) {
				for(int j=0;j<dayArr.length;j++) {
					if(choiceDay[i].equals(dayArr[j])) {
						choiceArr[i]=arr[j];
					}
				}
			}
			for(int i=1;i<choiceDay.length;i++) {
				choiceArr[i]=choiceArr[i]-choiceArr[0];
			}
			choiceArr[0]=0;
			int choiceCnt=0;
			int week=0;
			for(int i=0;i<title.length;i++) {
				for(int j=0;j<classId.length;j++) {
					adminService.addStudyPlan(timestamp,choiceArr[choiceCnt],week,classId[j],title[i],bookName,className[j]);
				}
				choiceCnt++;
				if(choiceCnt==choiceArr.length) {
					choiceCnt=0;
					week++;
				}
				
			}
			ModelAndView mav=new ModelAndView();
			mav.setViewName("redirect:/planning.mdo");
			return mav;
		}
		//클래스 별 계획
		@RequestMapping(value="/planning.mdo",method=RequestMethod.GET)
		public ModelAndView planning() {
			ModelAndView mav=new ModelAndView();
			mav.setViewName("admin/calendar");
			return mav;
		}
		@GetMapping("/adminCalendar.mdo")
	    @ResponseBody
	    public List<Map<String, Object>> monthPlan(Model model) {
	        List<ClassPlanningVO> listAll = adminService.PlanningList();
	 
	        JSONObject jsonObj = new JSONObject();
	        JSONArray jsonArr = new JSONArray();
	 
	        HashMap<String, Object> hash = new HashMap<>();
	 
	        for (int i = 0; i < listAll.size(); i++) {
	        	hash.put("title", listAll.get(i).getClass_name()+" "+listAll.get(i).getBook_name()+" "+listAll.get(i).getTitle());
	        	hash.put("bookName", listAll.get(i).getBook_name());
	            hash.put("start", listAll.get(i).getCreate_date());
	            hash.put("end", listAll.get(i).getCreate_date());
	            hash.put("id", listAll.get(i).getId());
	            
	            jsonObj = new JSONObject(hash);
	            jsonArr.add(jsonObj);
	        }
	        model.addAttribute("d","");
	        return jsonArr;
	    }
		@RequestMapping("/calendarDetail.mdo")
		public ModelAndView calendarDetail(@RequestBody Map<String, Object> param) {
			ModelAndView mav=new ModelAndView();
			  System.out.println("\n");
			  
			  
		        System.out.println("=======================================");
		        System.out.println("[ModuleApiController] : [testPostBodyJson] : [start]");
		        System.out.println("[request keySet] : " + String.valueOf(param.keySet()));
		        System.out.println("[request idx] : " + String.valueOf(param.get("id")));
		        System.out.println("[request name] : " + String.valueOf(param.get("start")));
		        System.out.println("=======================================");
		        System.out.println("\n");

			return mav;
		}
		@RequestMapping("/studentDaily.mdo")
		public ModelAndView studentDaily() {
			ModelAndView mav=new ModelAndView();
			
			
			mav.setViewName("admin/studentDaily");
			return mav;
		}
		//클래스 관리
		@RequestMapping("/studentClassList.mdo")
		public ModelAndView studentClassList(HttpServletRequest request) {
			HttpSession session=request.getSession();
			TeacherVO teacherVO=(TeacherVO)session.getAttribute("loginTeacher");
			ModelAndView mav=new ModelAndView();
			List<StudentVO> studentVO=new ArrayList();
			List<StudentClassAllVO> studentClassVO=new ArrayList();
			studentVO=studentService.studentList();
			studentClassVO=studentService.studentClass();
			mav.addObject("studentClassList",studentClassVO);
			mav.setViewName("admin/studentClassList"); 	
			return mav;
		}
		//클래스 추가
		@RequestMapping("/addClassForm.mdo")
		public ModelAndView addClassForm(@RequestParam("id")int id) {
			ModelAndView mav=new ModelAndView();
			List<Student_ClassVO> classAllVO=new ArrayList();
			classAllVO=adminService.getStudentClassAll();
			List<StudentClassListVO> studentClassVO=new ArrayList();
				studentClassVO=studentService.getStudentClass(id);
				String stuClass[]=studentClassVO.toArray(new String [studentClassVO.size()]);

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
			for(int i=0;i<name.length;i++) {
				studentService.insertStudentClass(id,name[i]);
			}
			
			return "redirect:/addClassForm.mdo?id="+id;
		}
		//학생 클래스 제거
		@RequestMapping("/deleteClassForm.mdo")
		public ModelAndView deleteClassForm(@RequestParam("id")int id) {
			ModelAndView mav=new ModelAndView();
			List<StudentClassListVO> studentClassVO=new ArrayList();
			studentClassVO=studentService.getStudentClass(id);
			mav.addObject("studentClass",studentClassVO);
			mav.addObject("id",id);
			mav.setViewName("admin/deleteClass");
			return mav;
		}
		@RequestMapping("/deleteClass.mdo")
		public String deleteClass(@RequestParam("name")String []name,@RequestParam("id")int id) {
			ModelAndView mav=new ModelAndView();
			for(int i=0;i<name.length;i++) {
				studentService.deleteStudentClass(id,name[i]);
			}
			
			return "redirect:/deleteClassForm.mdo?id="+id;
		}

}
