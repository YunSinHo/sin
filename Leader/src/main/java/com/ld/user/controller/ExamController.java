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
	@RequestMapping("/testCheck.do")
	public ModelAndView testCheck (@RequestParam("word_trans") String word_trans[],
			@RequestParam("word_name") String word_name[],
			@RequestParam("word_seq") int word_seq[],
			@RequestParam("write") String write[],
			HttpServletRequest request)throws IOException, ParseException {
		 
  
		HttpSession session=request.getSession();
		int id=(int)session.getAttribute("id");
		//WordpdfController에 위치함
		int num=(int)session.getAttribute("num");
		String student_class=(String)session.getAttribute("student_class");
		
		//구구단 단어 시험 정답 체크
				String ox[]=new String[num];
				int cnt=0;
				double score=0;
				for(int i=0; i<num;i++) {
					if(word_name[i].equals(write[i])) {
						ox[i]="O";
						cnt++;
					}
					else ox[i]="X";
				}
				
				if(num==60) {
					score=cnt*1.66;
					if(score>99)score=100;
				}
				else if(num==30) {
					score=cnt*3.33;
					if(score>99)score=100;
				}
		//json 타입으로 데이터 저장
		String contentArr[]=new String[num];
		String contentYet="";
		for(int i=0; i<num;i++) {
			contentArr[i]="\"content_id"+i+"\":"+"{\"word_name\":\""+word_name[i]+"\","+"\"word_trans\":\""+word_trans[i]+"\",\"write\":\""
		+write[i]+"\",\"word_seq\":"+word_seq[i]+",\"ox\":\""+ox[i]+"\""+"},";
			contentYet+=contentArr[i];
		}
		String content="{"+contentYet+"}";
		content=content.substring(0,content.length()-2)+""+content.substring(content.length()-1);
		ExamVO examVO=new ExamVO();
		examVO.setClass_name(student_class);
		examVO.setContent(content);
		examVO.setStudent_id(id);
		examVO.setNum(num);
		examVO.setScore(score);
		wordpdfService.insertExamGugudan(examVO);
		
		System.out.println(content);
		
		List<ExamVO> examListArr=new ArrayList();
		String[] word_trans1=new String[num];
		String word_name1[]=new String[num];
		String write1[]=new String[num];
		int word_seq1[]=new int[num];
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
		
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("score",score);
		mav.addObject("gugudan_result",examListArr);
		mav.addObject("student_class",student_class);
		mav.setViewName("user/examGugudan");
		return mav;
		
	}
	//시험 결과 one
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
