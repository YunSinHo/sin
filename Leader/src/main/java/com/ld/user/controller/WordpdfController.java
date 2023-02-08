package com.ld.user.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.json.simple.parser.ParseException;
import org.mybatis.spring.SqlSessionTemplate;
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

import com.ld.user.service.WordpdfService;
import com.ld.user.vo.ExamVO;
import com.ld.user.vo.WordcollectionVO;
import com.ld.user.vo.WordgugudanVO;

@Controller
public class WordpdfController {
	

	@Autowired
	private final WordpdfService wordpdfService;
	
	@Autowired
	public WordpdfController(WordpdfService wordpdfService) {
		this.wordpdfService = wordpdfService;
	}
	@GetMapping("/wordinsert.do")
	public String wordinsertGet() {
		return "user/wordinsert";
	}
	@GetMapping("/wordpdflist.do")
	public ModelAndView wordpdflistGet(Model model) throws Exception {
		ModelAndView mav = new ModelAndView();
		List<WordgugudanVO> showList = new ArrayList<WordgugudanVO>();
		showList = wordpdfService.wordpdflist_page();
		mav.addObject("WordpdfList", showList);
		mav.setViewName("user/examGugudanList");
		return mav;
	}
	//단어구구단
	@RequestMapping(value="/wordpdf.do")
	public ModelAndView wordpdfGet(@RequestParam("gugudan_name") String gugudan_name) {
		ModelAndView mav = new ModelAndView();
		WordgugudanVO wordgugudanVO=new WordgugudanVO();
		wordgugudanVO=wordpdfService.getGugudan(gugudan_name);
		List<WordcollectionVO> wordVO= new ArrayList();
		wordVO = wordpdfService.wordpdfread(wordgugudanVO.getGugudan_level());
		if(wordgugudanVO.getGugudan_name().equals("단어구구단(1단)"))wordgugudanVO.setGugudan_name("1단");
		else if(wordgugudanVO.getGugudan_name().equals("단어구구단(2단)"))wordgugudanVO.setGugudan_name("2단");
		else if(wordgugudanVO.getGugudan_name().equals("단어구구단(3단)"))wordgugudanVO.setGugudan_name("3단");
		else if(wordgugudanVO.getGugudan_name().equals("단어구구단(4단)"))wordgugudanVO.setGugudan_name("4단");
		else if(wordgugudanVO.getGugudan_name().equals("단어구구단(5단)"))wordgugudanVO.setGugudan_name("5단");
		else if(wordgugudanVO.getGugudan_name().equals("단어구구단(6단)"))wordgugudanVO.setGugudan_name("6단");
		else if(wordgugudanVO.getGugudan_name().equals("단어구구단(7단)"))wordgugudanVO.setGugudan_name("7단");
		else if(wordgugudanVO.getGugudan_name().equals("단어구구단(8단)"))wordgugudanVO.setGugudan_name("8단");
		else if(wordgugudanVO.getGugudan_name().equals("단어구구단(9단)"))wordgugudanVO.setGugudan_name("9단");
		mav.addObject("wpdf_view", wordVO);
		mav.addObject("gugudan",wordgugudanVO);
		mav.setViewName("user/wordpdf");
		return mav;
	}
	//구구단 페이지 선택(객관식)
	@RequestMapping(value="/examObjectiveNumber.do")
	public ModelAndView examObjectiveNumber (@RequestParam("gugudan_name")String gugudan_name,
			@RequestParam("num")int num) {
		ModelAndView mav=new ModelAndView();
		WordgugudanVO wordgugudanVO=new WordgugudanVO();
		wordgugudanVO=wordpdfService.getGugudan(gugudan_name);
		List<WordcollectionVO> wordVO= new ArrayList();
		wordVO = wordpdfService.wordpdfread(wordgugudanVO.getGugudan_level());
		int pageCnt=0;
		int restCnt=0;
			pageCnt=(int)wordVO.size()/60;
			restCnt=wordVO.size()%60;
			if(restCnt>0)pageCnt++;
		int page[]=new int[pageCnt];
		int cnt=0;
		for(int i=1;i<=pageCnt;i++) {
			page[cnt]=i;
			cnt++;
		}
		
		System.out.println(pageCnt+" "+restCnt);
		mav.addObject("page",page);
		mav.addObject("gugudan_name",gugudan_name);
		mav.addObject("num",num);
		mav.addObject("restPage",restCnt);
		mav.setViewName("user/examObjectiveNumber");
		return mav;
	}
	//구구단 페이지 선택(주관식)
	@RequestMapping(value="/examNumber.do" )
	public ModelAndView examNumber (@RequestParam("gugudan_name")String gugudan_name,
			@RequestParam("num")int num) {
		ModelAndView mav=new ModelAndView();
		WordgugudanVO wordgugudanVO=new WordgugudanVO();
		wordgugudanVO=wordpdfService.getGugudan(gugudan_name);
		List<WordcollectionVO> wordVO= new ArrayList();
		wordVO = wordpdfService.wordpdfread(wordgugudanVO.getGugudan_level());
		int pageCnt=0;
		int restCnt=0;
			pageCnt=(int)wordVO.size()/60;
			restCnt=wordVO.size()%60;
			if(restCnt>0)pageCnt++;
		int page[]=new int[pageCnt];
		int cnt=0;
		for(int i=1;i<=pageCnt;i++) {
			page[cnt]=i;
			cnt++;
		}
		
		System.out.println(pageCnt+" "+restCnt);
		mav.addObject("page",page);
		mav.addObject("gugudan_name",gugudan_name);
		mav.addObject("num",num);
		mav.addObject("restPage",restCnt);
		mav.setViewName("user/examNumber");
		return mav;
	}
	//주관식 문제
	
	//구구단페이지 선택 문제추출
	@RequestMapping(value="/wordpdfPageExam.do", method=RequestMethod.POST)
	public ModelAndView wordpdfPageExam(@RequestParam("gugudan_name") String gugudan_name,
			HttpServletRequest request,
			@RequestParam("num")int num,
			@RequestParam("page")int page[],
			@RequestParam("allPage")int allPage[],
			@RequestParam("restPage")int restPage) {
		HttpSession session=request.getSession();
		ModelAndView mav = new ModelAndView();
		String class_name=(String)session.getAttribute("student_class");
		WordgugudanVO wordgugudanVO=new WordgugudanVO();
		wordgugudanVO=wordpdfService.getGugudan(gugudan_name);
		List<WordcollectionVO> wordVO= new ArrayList();
		int min=0;
		int max=0;
		int start=0;
		int end=0;
		if(page.length==2) {
		if(page[0]==1&&gugudan_name.equals("단어구구단(1단)")) {
			start=1;
			if(page[1]==allPage[allPage.length-1]&&restPage>0) {
				end=(page[1]-page[0]+1)*60-60+restPage;
			}
			else{
				end=(page[1]-page[0]+1)*60;
			}
			
		}
		else if(page[0]==1) {
			start=wordpdfService.getStartSeq(wordgugudanVO.getGugudan_level());
			if(page[1]==allPage[allPage.length-1]&&restPage>0) {
				end=(page[1]-page[0]+1)*60-60+restPage;
			}
			else{
				end=(page[1]-page[0]+1)*60;
			}
		}
		else {
			start=wordpdfService.getStartSeq(wordgugudanVO.getGugudan_level())+page[0]*60-60;
			if(page[1]==allPage[allPage.length-1]&&restPage>0) {
				end=(page[1]-page[0]+1)*60-60+restPage;
			}
			else{
				end=(page[1]-page[0]+1)*60;
			}
		}
		}
		else {
			start=wordpdfService.getStartSeq(wordgugudanVO.getGugudan_level())+page[0]*60-60;
			end=60;
		}
		int index[]=new int[num];
		for(int i=0;i<index.length;i++) {
			index[i]=(int)((Math.random()*(end)+start));
			for(int j=0;j<i;j++) {
				if(index[i]==index[j])i--;
			}
		}
		if(wordgugudanVO.getGugudan_name().equals("단어구구단(1단)"))wordgugudanVO.setGugudan_name("1단");
		else if(wordgugudanVO.getGugudan_name().equals("단어구구단(2단)"))wordgugudanVO.setGugudan_name("2단");
		else if(wordgugudanVO.getGugudan_name().equals("단어구구단(3단)"))wordgugudanVO.setGugudan_name("3단");
		else if(wordgugudanVO.getGugudan_name().equals("단어구구단(4단)"))wordgugudanVO.setGugudan_name("4단");
		else if(wordgugudanVO.getGugudan_name().equals("단어구구단(5단)"))wordgugudanVO.setGugudan_name("5단");
		else if(wordgugudanVO.getGugudan_name().equals("단어구구단(6단)"))wordgugudanVO.setGugudan_name("6단");
		else if(wordgugudanVO.getGugudan_name().equals("단어구구단(7단)"))wordgugudanVO.setGugudan_name("7단");
		else if(wordgugudanVO.getGugudan_name().equals("단어구구단(8단)"))wordgugudanVO.setGugudan_name("8단");
		else if(wordgugudanVO.getGugudan_name().equals("단어구구단(9단)"))wordgugudanVO.setGugudan_name("9단");
		wordVO = wordpdfService.wordpdfread(index);
		mav.addObject("gugudan",wordgugudanVO);
		mav.addObject("num",num);
		mav.addObject("wpdf_view", wordVO);
		mav.addObject("class_name",class_name);
		mav.setViewName("user/examSubjective1");
		return mav;
	}
	//구구단(1~4),(4~7)...클래스 영자신문 주관식
	@RequestMapping(value="/examSubjective.do")
	public ModelAndView wordpdftestGet(@RequestParam("gugudan_name") String gugudan_name,
			HttpServletRequest request,
			@RequestParam("num")int num) {
		
		HttpSession session=request.getSession();
		ModelAndView mav = new ModelAndView();
		String class_name=(String)session.getAttribute("student_class");
		WordgugudanVO wordgugudanVO=new WordgugudanVO();
		List<WordcollectionVO> wordVO= new ArrayList();
		int min=0;
		int max=0;
		int start=0;
		int end=0;
		
		if(class_name.equals("단어구구단(1~4단)")) {
			class_name="1~4";
			wordgugudanVO.setGugudan_name("下");
		 min=1;
		 max=4;
		 start=wordpdfService.getStartSeq(min);
		 end=wordpdfService.getEndSeq(max);
		}
		else if(class_name.equals("단어구구단(4~7단)")) {
			class_name="4~7";
			wordgugudanVO.setGugudan_name("中");
			 min=4;
			 max=7;
			 start=wordpdfService.getStartSeq(min);
			 end=wordpdfService.getEndSeq(max);
			 end=end-start;
			}
		else if(class_name.equals("단어구구단(7~9단)")) {
			class_name="7~9";
			wordgugudanVO.setGugudan_name("中");
			 min=7;
			 max=9;
			 start=wordpdfService.getStartSeq(min);
			 end=wordpdfService.getEndSeq(max);
			 end=end-start;
			}
		else if(class_name.equals("단어구구단(9단)")) {
			class_name="9";
			wordgugudanVO.setGugudan_name("上");
			 min=9;
			 max=9;
			 start=wordpdfService.getStartSeq(min);
			 end=wordpdfService.getEndSeq(max);
			 end=end-start;
			}
		
		
		int index[]=new int[num];
		
		for(int i=0;i<index.length;i++) {
			index[i]=(int)((Math.random()*(end)+start));
			for(int j=0;j<i;j++) {
				if(index[i]==index[j])i--;
			}
		}
		
		wordVO = wordpdfService.wordpdfread(index);
		mav.addObject("num",num);
		mav.addObject("gugudan",wordgugudanVO);
		mav.addObject("wpdf_view", wordVO);
		mav.addObject("class_name",class_name);
		mav.setViewName("user/examSubjective1");
		return mav;
	}
	//객관식 문제
	//구구단페이지 선택 문제추출
	@RequestMapping(value="/wordpdfPageObjectiveExam.do", method=RequestMethod.POST)
	public ModelAndView wordpdfPageObjectiveExam(@RequestParam("gugudan_name") String gugudan_name,
			HttpServletRequest request,
			@RequestParam("num")int num,
			@RequestParam("page")int page[],
			@RequestParam("allPage")int allPage[],
			@RequestParam("restPage")int restPage) {
		HttpSession session=request.getSession();
		ModelAndView mav = new ModelAndView();
		String class_name=(String)session.getAttribute("student_class");
		WordgugudanVO wordgugudanVO=new WordgugudanVO();
		wordgugudanVO=wordpdfService.getGugudan(gugudan_name);
		List<WordcollectionVO> wordVO= new ArrayList();
		int min=0;
		int max=0;
		int start=0;
		int end=0;
		if(page.length==2) {
		if(page[0]==1&&gugudan_name.equals("단어구구단(1단)")) {
			start=1;
			if(page[1]==allPage[allPage.length-1]&&restPage>0) {
				end=(page[1]-page[0]+1)*60-60+restPage;
			}
			else{
				end=(page[1]-page[0]+1)*60;
			}
			
		}
		else if(page[0]==1) {
			start=wordpdfService.getStartSeq(wordgugudanVO.getGugudan_level());
			if(page[1]==allPage[allPage.length-1]&&restPage>0) {
				end=(page[1]-page[0]+1)*60-60+restPage;
			}
			else{
				end=(page[1]-page[0]+1)*60;
			}
		}
		else {
			start=wordpdfService.getStartSeq(wordgugudanVO.getGugudan_level())+page[0]*60-60;
			if(page[1]==allPage[allPage.length-1]&&restPage>0) {
				end=(page[1]-page[0]+1)*60-60+restPage;
			}
			else{
				end=(page[1]-page[0]+1)*60;
			}
		}
		}
		else {
			start=wordpdfService.getStartSeq(wordgugudanVO.getGugudan_level())+page[0]*60-60;
			end=60;
		}
		int index[]=new int[num];
		for(int i=0;i<index.length;i++) {
			index[i]=(int)((Math.random()*(end)+start));
			for(int j=0;j<i;j++) {
				if(index[i]==index[j])i--;
			}
		}
		int index1[]=new int[num*3];
		String randomArr[]=new String[4];
		for(int i=0;i<num*3;i++) {
			index1[i]=(int)((Math.random()*(36801)+1));
			for(int j=0;j<i;j++) {
				if(index1[i]==index1[j])i--;
			}
		}
		List<WordcollectionVO> wordVO1=new ArrayList();
		List<WordcollectionVO> wordVO2=new ArrayList();
		wordVO2 = wordpdfService.wordpdfread(index1);
		wordVO1 = wordpdfService.wordpdfread(index);
		String word_collect[]=new String[num];
		int cnt=0;
		for(int i=0;i<num;i++) {
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
		mav.addObject("gugudan",wordgugudanVO);
		mav.addObject("class_name",class_name);
		mav.setViewName("user/examObjective");
		return mav;
	}
	//객관식 문제
	//구구단(1~4),(4~7)...클래스 객관식
	@RequestMapping(value="/examObjective.do")
	public ModelAndView examObjective(@RequestParam("gugudan_name") String gugudan_name,
			HttpServletRequest request,
			@RequestParam("num")int num) {
		System.out.println(num);
		HttpSession session=request.getSession();
		ModelAndView mav = new ModelAndView();
		String class_name=(String)session.getAttribute("student_class");
		WordgugudanVO wordgugudanVO=new WordgugudanVO();
		wordgugudanVO=wordpdfService.getGugudan(gugudan_name);
		int min=0;
		int max=0;
		int start=0;
		int end=0;
		if(class_name.equals("단어구구단(1~4단)")) {
			class_name="1~4";
		 min=1;
		 max=4;
		 start=wordpdfService.getStartSeq(min);
		 end=wordpdfService.getEndSeq(max);
		}
		else if(class_name.equals("단어구구단(4~7단)")) {
			class_name="4~7";
			 min=4;
			 max=7;
			 start=wordpdfService.getStartSeq(min);
			 end=wordpdfService.getEndSeq(max);
			 end=end-start;
			}
		else if(class_name.equals("단어구구단(7~9단)")) {
			class_name="7~9";
			 min=7;
			 max=9;
			 start=wordpdfService.getStartSeq(min);
			 end=wordpdfService.getEndSeq(max);
			 end=end-start;
			}
		else if(class_name.equals("단어구구단(9단)")) {
			class_name="9";
			 min=9;
			 max=9;
			 start=wordpdfService.getStartSeq(min);
			 end=wordpdfService.getEndSeq(max);
			 end=end-start;
			}
		
		int index[]=new int[num];
		
		for(int i=0;i<num;i++) {
			index[i]=(int)((Math.random()*(end)+start));
			for(int j=0;j<i;j++) {
				if(index[i]==index[j])i--;
			}
		}
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
		List<WordcollectionVO> wordVO2=new ArrayList();
		wordVO2 = wordpdfService.wordpdfread(index1);
		wordVO1 = wordpdfService.wordpdfread(index);
		String word_collect[]=new String[num];
		int cnt=0;
		for(int i=0;i<num;i++) {
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
		mav.addObject("gugudan",wordgugudanVO);
		mav.addObject("class_name",class_name);
		mav.setViewName("user/examObjective");
		return mav;
	}
	//주관식 단어시험 제출
		@RequestMapping(value="/testCheck.do" , method=RequestMethod.POST)
		public ModelAndView testCheck (@RequestParam("word_trans") String word_trans[],
				@RequestParam("word_name") String word_name[],
				@RequestParam("word_seq") int word_seq[],
				@RequestParam("write") String write[],
				@RequestParam("num") int num,
				HttpServletRequest request)throws IOException, ParseException {
			 
	  
			HttpSession session=request.getSession();
			String student_class=(String)session.getAttribute("student_class");
			int id=(int)session.getAttribute("id");
			//WordpdfController에 위치함
			
			//구구단 단어 시험 정답 체크
					String ox[]=new String[num];
					int cnt=0;
					double score=0;
					double ext=0;
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
					else {
						ext=100/num;
						score=cnt*ext;
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
	//객관식 문제 제출
	@RequestMapping(value="/examObjectiveCheck.do" , method=RequestMethod.POST)
	public ModelAndView examObjectiveCheck(HttpServletRequest request,
			@RequestParam("word_name")String word_name[],
			@RequestParam("word_seq")int word_seq[],
			@RequestParam("word_collect")String word_collect[],
			@RequestParam("gugudan_name")String student_class,
			@RequestParam("num")int num) {
		
		HttpSession session=request.getSession();
		int id=(int)session.getAttribute("id");
		String write[]=new String[num];
		for(int i=0;i<num;i++) {
			write[i]=request.getParameter("write"+i);
		}
		System.out.println(word_collect.length+" "+write.length);
		//구구단 단어 시험 정답 체크
		String ox[]=new String[num];
		int cnt=0;
		double score=0;
		double ext=0;
		System.out.println(Arrays.asList(word_collect));
		System.out.println(Arrays.asList(write));
		for(int i=0; i<num;i++) {
			if(word_collect[i].equals(write[i])) {
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
		else {
			ext=100/num;
			score=cnt*ext;
		}
		System.out.println(student_class);
		System.out.println(Arrays.toString(write)+student_class);
		System.out.println(Arrays.toString(word_collect));
		ModelAndView mav=new ModelAndView();
		String contentArr[]=new String[num];
		String contentYet="";
		for(int i=0; i<num;i++) {
			contentArr[i]="\"content_id"+i+"\":"+"{\"word_name\":\""+word_name[i]+"\","+"\"word_trans\":\""+word_collect[i]+"\",\"write\":\""
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
		//시험결과 저장
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
		System.out.println(student_class);
		mav.addObject("score",score);
		mav.addObject("gugudan_result",examListArr);
		mav.addObject("student_class",student_class);
		mav.setViewName("user/examGugudan");
		return mav;
	}
	@ResponseBody
    @RequestMapping(value = "/insertdata.do", method = RequestMethod.POST)
	public List<Map<String, Object>> test(@RequestBody List<Map<String, Object>> param) {
		wordpdfService.wordpdfinsert(param);
		//sqlSessionTemplate.insert("wordpdf.wordpdfinsert",param);
		return param;
	}
}
