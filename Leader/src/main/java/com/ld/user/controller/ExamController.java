package com.ld.user.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ld.user.service.WordpdfService;
import com.ld.user.vo.ExamVO;
import com.ld.user.vo.StudentVO;
import com.ld.user.vo.WordcollectionVO;
import com.ld.user.vo.WordgugudanVO;

@Controller
public class ExamController {
	@Autowired
	private WordpdfService wordpdfService;
	
	@RequestMapping("/testCheckForm.do")
	public ModelAndView textCheckForm(@RequestParam("student_class") String student_class,
			@RequestParam("id") int id,
			 HttpServletRequest request) {
		ModelAndView mav=new ModelAndView();
		HttpSession session=request.getSession();
		List<ExamVO> examVO=new ArrayList();
		examVO=wordpdfService.getExamList(id,student_class);
		//평균점수
		double score=0;
		double scoreAll=0;
		for(int i=0;i<examVO.size();i++) {
			scoreAll+=examVO.get(i).getScore();
			score=scoreAll/examVO.size();
		}
		String score1=String.format("%.2f", score);
		mav.addObject("score",score1);
		mav.addObject("exam_list",examVO);
		mav.setViewName("user/examResultList");
		
		return mav;
	}
	
	//시험 결과 한개
	@RequestMapping("/examOne.do")
	public ModelAndView examOne(@RequestParam("id")int id,HttpServletRequest request) {
		ModelAndView mav=new ModelAndView();
		HttpSession session=request.getSession();
		//WordpdfController에 위치함
		
		
		ExamVO examVO=new ExamVO();
		examVO=wordpdfService.getExam(id);
		int num=examVO.getNum();
		double score=examVO.getScore();
		List<ExamVO> examListArr=new ArrayList();
		String ox[]=new String[num];
		String[] word_trans1=new String[num];
		String word_name1[]=new String[num];
		String write1[]=new String[num];
		int word_seq1[]=new int[num];
		String content=examVO.getContent();
		System.out.println(content);
JSONObject jObject = new JSONObject(content);
		for(int i=0;i<num;i++) {
			JSONObject post1Object
			= jObject.getJSONObject("content_id"+i);
			word_trans1[i] = post1Object.getString("word_trans");
			word_name1[i] = post1Object.getString("word_name");
			write1[i] = post1Object.getString("write");
			 word_seq1[i] = post1Object.getInt("word_seq");
			 ox[i] = post1Object.getString("ox");
			 ExamVO examList =new ExamVO();
		examList.setWord_trans(word_trans1[i]);
			 examList.setWord_name(word_name1[i]);
			 examList.setWrite(write1[i]);
			examList.setWord_seq(word_seq1[i]);
			examList.setOx(ox[i]);
			examListArr.add(i,examList);
		}
		mav.addObject("gugudan_result",examListArr);
		mav.addObject("score",score);
		mav.addObject("student_class",examVO.getClass_name());
		mav.setViewName("user/examGugudan");
		return mav;
	}
}
