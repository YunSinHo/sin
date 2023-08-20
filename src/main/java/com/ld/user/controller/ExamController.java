package com.ld.user.controller;

import com.ld.user.service.WordpdfService;
import com.ld.user.vo.ExamVO;
import com.ld.user.vo.WordcollectionVO;
import com.ld.user.vo.WordgugudanVO;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
public class ExamController {
	@Autowired
	private WordpdfService wordpdfService;
	//클래스 시험결과목록
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
	//틀린단어목록
	@RequestMapping(value="/wrongWord.do")
	public ModelAndView wordWordList(@RequestParam("id")int id) {
		ModelAndView mav=new ModelAndView();
		try {
			List<ExamVO> examVO=new ArrayList();
			//틀린단어 저장할 리스트
			List<ExamVO> examListArr=new ArrayList();
			List<ExamVO> examListArr2=new ArrayList();
			examVO=wordpdfService.getExamListAll(id);
			System.out.println(examVO.size());
			int cnt=0;
			int cnt1=0;
			for(int i=0;i<examVO.size();i++) {
				int num=examVO.get(i).getNum();
				double score=examVO.get(i).getScore();
				String ox[]=new String[examVO.get(i).getNum()];
				String[] word_trans1=new String[examVO.get(i).getNum()];
				String word_name1[]=new String[examVO.get(i).getNum()];
				String write1[]=new String[examVO.get(i).getNum()];
				int word_seq1[]=new int[examVO.get(i).getNum()];
				String content=examVO.get(i).getContent();
				JSONObject jObject = new JSONObject(content);
				for(int j=0;j<examVO.get(i).getNum();j++) {
					JSONObject post1Object
					= jObject.getJSONObject("content_id"+j);
					word_trans1[j] = post1Object.getString("word_trans");
					word_name1[j] = post1Object.getString("word_name");
					write1[j] = post1Object.getString("write");
					 word_seq1[j] = post1Object.getInt("word_seq");
					 ox[j] = post1Object.getString("ox");
					 ExamVO examList =new ExamVO();
					 if(ox[j].contains("X")) {
				examList.setWord_trans(word_trans1[j]);
					 examList.setWord_name(word_name1[j]);
					 examList.setWrite(write1[j]);
					examList.setWord_seq(word_seq1[j]);
					examList.setOx(ox[j]);
					examListArr.add(cnt,examList);
					cnt++;
					 }
					 else if(ox[j].contains("O")) {
							examList.setWord_trans(word_trans1[j]);
								 examList.setWord_name(word_name1[j]);
								 examList.setWrite(write1[j]);
								examList.setWord_seq(word_seq1[j]);
								examList.setOx(ox[j]);
								examListArr2.add(cnt1,examList);
								cnt1++;
								 }
				}
			}
			
			//틀린단어 횟수
			for(int i=0;i<examListArr.size();i++) {
				int wrongCnt=1;
				for(int j=i+1;j<examListArr.size();j++) {
					
					if(examListArr.get(i).getWord_name().equals(examListArr.get(j).getWord_name())){
						examListArr.remove(j);
						wrongCnt++;
					}
				}
				examListArr.get(i).setWrongWordCount(wrongCnt);
			}
			examListArr.remove(examListArr.size()-1);
			int cnt2=examListArr.size();
			//틀린단에 재시험시 O이면 목록에서 제거
			System.out.println(examListArr.size()+" " +examListArr2.size());
			for(int i=0;i<examListArr2.size();i++) {
				
				for(int j=0; j<cnt2;j++) {
					if(examListArr2.get(i).getWord_seq()==examListArr.get(j).getWord_seq()) {
						examListArr.remove(j);
						cnt2--;
						break;
					}
				}
			}
			examListArr.remove(examListArr.size()-1);
			mav.addObject("examList",examListArr);
			System.out.println(Arrays.asList(examListArr));
		}catch(Exception e) {
		}
		
		
		mav.setViewName("user/wrongWordList");
		return mav;
	}
	//틀린단어 재시험
	//주관식
	@RequestMapping(value="/reExamSubjective.do",method=RequestMethod.POST)
	public ModelAndView reExam(@RequestParam("student_class")String student_class,
			@RequestParam("word_seq")int word_seq[],
			@RequestParam("word_name")String word_name[],
			@RequestParam("word_trans")String word_trans[],
			HttpServletRequest request) {
		int num=word_seq.length;
		System.out.println("===========================");
		System.out.println(Arrays.toString(word_name));
		System.out.println("===========================");
		System.out.println(Arrays.toString(word_seq));
		HttpSession session=request.getSession();
		session.setAttribute("student_class", student_class);
		ModelAndView mav = new ModelAndView();
		String class_name=(String)session.getAttribute("student_class");
		List<WordcollectionVO> wordVO= new ArrayList();
		wordVO=wordpdfService.wordpdfread(word_seq);
		WordgugudanVO wordgugudanVO=new WordgugudanVO();
		wordgugudanVO.setGugudan_name("Re");
		mav.addObject("num",num);
		mav.addObject("gugudan",wordgugudanVO);
		mav.addObject("wpdf_view", wordVO);
		mav.addObject("class_name",class_name);
		mav.setViewName("user/examSubjective1");
		
		return mav;
	}
	//객관식
	@RequestMapping(value="/reExamObjective.do",method=RequestMethod.POST)
	public ModelAndView reExamObjective(@RequestParam("student_class")String student_class,
			@RequestParam("word_seq")int word_seq[],
			@RequestParam("word_name")String word_name[],
			@RequestParam("word_trans")String word_trans[],
			HttpServletRequest request) {
		HttpSession session=request.getSession();
		ModelAndView mav = new ModelAndView();
		session.setAttribute("student_class", student_class);
		String class_name=(String)session.getAttribute("student_class");
		int num=word_seq.length;
		System.out.println("===========================");
		System.out.println(Arrays.toString(word_name));
		System.out.println(num+"===========================");
		System.out.println(Arrays.toString(word_seq));
		//랜덤 보기 뽑기
	int index1[]=new int[num*3];
		String randomArr[]=new String[4];
		for(int i=0;i<num*3;i++) {
			index1[i]=(int)((Math.random()*(36801)+1));
			for(int j=0;j<i;j++) {
				if(index1[i]==index1[j])i--;
			}
		}
		List<WordcollectionVO> wordVO1=new ArrayList();
		wordVO1=wordpdfService.wordpdfread(word_seq);
		List<WordcollectionVO> wordVO2=new ArrayList();
		wordVO2 = wordpdfService.wordpdfread(index1);
		String word_collect[]=new String[num];
		int cnt=0;
		for(int i=0;i<num-1;i++) {
			word_collect[i]=wordVO1.get(i).getWord_trans();
			wordVO1.get(i).setWord_trans1(wordVO2.get(i).getWord_trans());
		}
		mav.addObject("word_collect",word_collect);
		for(int i=num;i<num*2;i++) {
			wordVO1.get(cnt).setWord_trans2(wordVO2.get(i).getWord_trans());
			cnt++;
		}
		cnt =0;
		for(int i=num*2;i<num*3;i++) {
			wordVO1.get(cnt).setWord_trans3(wordVO2.get(i).getWord_trans());
			cnt++;
		}
		//보기 1~4번 섞기
		for(int i=1;i<num;i++) {
		randomArr[0]=wordVO1.get(i).getWord_trans();
		randomArr[1]=wordVO1.get(i).getWord_trans1();
		randomArr[2]=wordVO1.get(i).getWord_trans2();
		randomArr[3]=wordVO1.get(i).getWord_trans3();
		int random1=(int)((Math.random()*(4)+0));
		int random2=(int)((Math.random()*(4)+0));
		int random3=(int)((Math.random()*(4)+0));
		int random4=(int)((Math.random()*(4)+0));
		if(random1==random2||random1==random3||random1==random4)i--;
		else if(random2==random3||random2==random4)i--;
		else if(random3==random4)i--;
		else {
		wordVO1.get(i).setWord_trans(randomArr[random1]);
		wordVO1.get(i).setWord_trans1(randomArr[random2]);
		wordVO1.get(i).setWord_trans2(randomArr[random3]);
		
		wordVO1.get(i).setWord_trans3(randomArr[random4]);
		}
		}
		System.out.println(Arrays.asList(randomArr));
		mav.addObject("wpdf_view", wordVO1);
		mav.addObject("num",num);
		mav.addObject("class_name",class_name);
		mav.setViewName("user/examObjective");
		return mav;
		
	}
}
