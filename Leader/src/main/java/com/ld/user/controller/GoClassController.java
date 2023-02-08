package com.ld.user.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ld.user.service.WordpdfService;
import com.ld.user.vo.StudentVO;
import com.ld.user.vo.TeacherVO;
import com.ld.user.vo.WordgugudanVO;

@Controller
public class GoClassController {

	@Autowired
	private WordpdfService wordpdfService;
	
	@RequestMapping("/goClass.do")
	public String goClass(@RequestParam("student_class")String student_class,
			HttpServletRequest request) {
		HttpSession session=request.getSession();
		StudentVO studentVO=(StudentVO)session.getAttribute("loginStudent");
		session.setAttribute("id", studentVO.getId());
		session.setAttribute("student_class", student_class);
		String url="user/examGugudanList";
		//구구단 클래스
		int level[]=new int[10];
		if(student_class.equals("단어구구단(1~4단)")) {
			level[0]=1;level[1]=2;level[2]=3;level[3]=4;
			url="user/examSentenceList";
		}
		else if(student_class.equals("단어구구단(4~7단)")) {
			level[0]=4;level[1]=5;level[6]=6;level[3]=7;
			url="user/examSentenceList";
		}
		else if(student_class.equals("단어구구단(7~9단)")) {
			level=new int[3];
			level[0]=7;level[1]=8;level[2]=9;
			url="user/examSentenceList";
		}
		else if(student_class.equals("단어구구단(9단)")) {
			level=new int[1];
			level[0]=9;
			url="user/examGugudanList";
		}
		else if(student_class.equals("단어구구단(8단)")) {
			level=new int[1];
			level[0]=8;
			url="user/examGugudanList";
		}
		else if(student_class.equals("단어구구단(7단)")) {
			level=new int[1];
			level[0]=7;
			url="user/examGugudanList";
		}
		else if(student_class.equals("단어구구단(6단)")) {
			level=new int[1];
			level[0]=6;
			url="user/examGugudanList";
		}
		else if(student_class.equals("단어구구단(5단)")) {
			level=new int[1];
			level[0]=5;
			url="user/examGugudanList";
		}
		else if(student_class.equals("단어구구단(4단)")) {
			level=new int[1];
			level[0]=4;
			url="user/examGugudanList";
		}
		else if(student_class.equals("단어구구단(3단)")) {
			level=new int[1];
			level[0]=3;
			url="user/examGugudanList";
		}
		else if(student_class.equals("단어구구단(2단)")) {
			level=new int[1];
			level[0]=2;
			url="user/examGugudanList";
		}
		else if(student_class.equals("단어구구단(1단)")) {
			level=new int[1];
			level[0]=1;
			url="user/examGugudanList";
		}
		List<WordgugudanVO> showList = new ArrayList<WordgugudanVO>();
		showList = wordpdfService.wordpdflist_pageSelect(level);
		session.setAttribute("WordpdfList", showList);
		
		
		return url;
	}
	@RequestMapping("/classAll.do")
	public String classAll(@RequestParam("name")String name,
			HttpServletRequest request) {
		HttpSession session=request.getSession();
		TeacherVO teacherVO=(TeacherVO)session.getAttribute("loginTeacher");
		String url="";
		//구구단 클래스
		int level[]=new int[10];
		if(name.equals("단어구구단(1~4단)")) {
			level[0]=1;level[1]=2;level[2]=3;level[3]=4;
			url="user/examSentenceList";
		}
		else if(name.equals("단어구구단(4~7단)")) {
			level[0]=4;level[1]=5;level[6]=6;level[3]=7;
			url="user/examSentenceList";
		}
		else if(name.equals("단어구구단(7~9단)")) {
			level=new int[3];
			level[0]=7;level[1]=8;level[2]=9;
			url="user/examSentenceList";
		}
		else if(name.equals("단어구구단(9단)")) {
			level=new int[1];
			level[0]=9;
			url="user/examGugudanList";
		}
		else if(name.equals("단어구구단(8단)")) {
			level=new int[1];
			level[0]=8;
			url="user/examGugudanList";
		}
		else if(name.equals("단어구구단(7단)")) {
			level=new int[1];
			level[0]=7;
			url="user/examGugudanList";
		}
		else if(name.equals("단어구구단(6단)")) {
			level=new int[1];
			level[0]=6;
			url="user/examGugudanList";
		}
		else if(name.equals("단어구구단(5단)")) {
			level=new int[1];
			level[0]=5;
			url="user/examGugudanList";
		}
		else if(name.equals("단어구구단(4단)")) {
			level=new int[1];
			level[0]=4;
			url="user/examGugudanList";
		}
		else if(name.equals("단어구구단(3단)")) {
			level=new int[1];
			level[0]=3;
			url="user/examGugudanList";
		}
		else if(name.equals("단어구구단(2단)")) {
			level=new int[1];
			level[0]=2;
			url="user/examGugudanList";
		}
		else if(name.equals("단어구구단(1단)")) {
			level=new int[1];
			level[0]=1;
			url="user/examGugudanList";
		}
		List<WordgugudanVO> showList = new ArrayList<WordgugudanVO>();
		showList = wordpdfService.wordpdflist_pageSelect(level);
		System.out.println(showList.get(0).getGugudan_name());
		session.setAttribute("WordpdfList", showList);
		return url;
	}
}
