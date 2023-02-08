package com.ld.user.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ld.user.service.WordpdfService;
import com.ld.user.vo.WordcollectionVO;
import com.ld.user.vo.WordgugudanVO;

@Controller
public class SentenceWordExamController {
	@Autowired
	private WordpdfService wordpdfService;
	
	//영자신문 단어 추출
	@RequestMapping(value="/examSentenceForm.do" )
	public ModelAndView eaxmSentenceForm(@RequestParam("gugudan_name")String gugudan_name,
			@RequestParam("check")String check) {
		ModelAndView mav=new ModelAndView();
		mav.addObject("gugudan_name",gugudan_name);
		System.out.println(check);
		mav.addObject("check",check);
		mav.setViewName("user/examSentence");
		return mav;
	}
	//영자 주관식
	@RequestMapping(value="/examSentence.do")
	public ModelAndView examSentence(@RequestParam("gugudan_name")String gugudan_name,
			@RequestParam("sentence")String sentence) {
		ModelAndView mav=new ModelAndView();
		sentence=sentence.replaceAll("[']", "`");
		sentence=sentence.replaceAll("[,]", "");
		sentence=sentence.replaceAll("[.]", "");
		sentence=sentence.replaceAll("[\"]", "");
		System.out.println(sentence);
		String sentenceArr[]=sentence.split(" ");
		int start=0;
		int end=0;
		int min=0;
		int max=0;
		WordgugudanVO wordgugudanVO=new WordgugudanVO();
		if(gugudan_name.equals("단어구구단(1~4단)")) {
			gugudan_name="1~4";
			wordgugudanVO.setGugudan_name("下");
		 min=1;
		 max=4;
		 start=wordpdfService.getStartSeq(min);
		 end=wordpdfService.getEndSeq(max);
		}
		else if(gugudan_name.equals("단어구구단(4~7단)")) {
			gugudan_name="4~7";
			wordgugudanVO.setGugudan_name("中");
			 min=4;
			 max=7;
			 start=wordpdfService.getStartSeq(min);
			 end=wordpdfService.getEndSeq(max);
			 end=end-start;
			}
		else if(gugudan_name.equals("단어구구단(7~9단)")) {
			wordgugudanVO.setGugudan_name("中");
			gugudan_name="7~9";
			 min=7;
			 max=9;
			 start=wordpdfService.getStartSeq(min);
			 end=wordpdfService.getEndSeq(max);
			 end=end-start;
			}
		else if(gugudan_name.equals("단어구구단(9단)")) {
			wordgugudanVO.setGugudan_name("上");
			gugudan_name="9";
			 min=9;
			 max=9;
			 start=wordpdfService.getStartSeq(min);
			 end=wordpdfService.getEndSeq(max);
			 end=end-start;
			}
		List<WordcollectionVO> wordVO=new ArrayList();
		wordVO=wordpdfService.getSentenceWord(start,end);
		List<WordcollectionVO> wordVO1=new ArrayList();
		int cnt=0;
		for(int i=0;i<sentenceArr.length;i++) {
			for(int j=0;j<wordVO.size();j++) {
				if(sentenceArr[i].equals(wordVO.get(j).getWord_name())){
					wordVO1.add(cnt, wordVO.get(j));
					cnt++;
					break;
				}
			}
		}
		 List<WordcollectionVO> wordVO2 = wordVO1.stream().distinct().collect(Collectors.toList());
		 int num=wordVO2.size();
		 mav.addObject("gugudan",gugudan_name);
		 mav.addObject("num",num);
		 
			mav.addObject("wpdf_view", wordVO2);
			mav.addObject("gugudan",wordgugudanVO);
			mav.addObject("class_name",gugudan_name);
			mav.setViewName("user/examSubjective1");
		System.out.println(wordVO1.get(0).getWord_seq()+" "+wordVO1.size()+" "+wordVO2.size());
		return mav;
	}
	//영자 주관식
	@RequestMapping(value="/examSentenceObjective.do")
	public ModelAndView examSentenceObjective(@RequestParam("gugudan_name")String gugudan_name,
			@RequestParam("sentence")String sentence) {
		ModelAndView mav=new ModelAndView();
		sentence=sentence.replaceAll("[']", "`");
		sentence=sentence.replaceAll("[,]", "");
		sentence=sentence.replaceAll("[.]", "");
		sentence=sentence.replaceAll("[\"]", "");
		System.out.println(sentence);
		String sentenceArr[]=sentence.split(" ");
		int start=0;
		int end=0;
		int min=0;
		int max=0;
		if(gugudan_name.equals("단어구구단(1~4단)")) {
			gugudan_name="1~4";
		 min=1;
		 max=4;
		 start=wordpdfService.getStartSeq(min);
		 end=wordpdfService.getEndSeq(max);
		}
		else if(gugudan_name.equals("단어구구단(4~7단)")) {
			gugudan_name="4~7";
			 min=4;
			 max=7;
			 start=wordpdfService.getStartSeq(min);
			 end=wordpdfService.getEndSeq(max);
			 end=end-start;
			}
		else if(gugudan_name.equals("단어구구단(7~9단)")) {
			gugudan_name="7~9";
			 min=7;
			 max=9;
			 start=wordpdfService.getStartSeq(min);
			 end=wordpdfService.getEndSeq(max);
			 end=end-start;
			}
		else if(gugudan_name.equals("단어구구단(9단)")) {
			gugudan_name="9";
			 min=9;
			 max=9;
			 start=wordpdfService.getStartSeq(min);
			 end=wordpdfService.getEndSeq(max);
			 end=end-start;
			}
		List<WordcollectionVO> wordVO=new ArrayList();
		wordVO=wordpdfService.getSentenceWord(start,end);
		List<WordcollectionVO> wordVO1=new ArrayList();
		int cnt=0;
		for(int i=0;i<sentenceArr.length;i++) {
			for(int j=0;j<wordVO.size();j++) {
				if(sentenceArr[i].equals(wordVO.get(j).getWord_name())){
					wordVO1.add(cnt, wordVO.get(j));
					cnt++;
					break;
				}
			}
		}
		 List<WordcollectionVO> wordVO2 = wordVO1.stream().distinct().collect(Collectors.toList());
		 int num=wordVO2.size();
		 int index1[]=new int[num*3];
			String randomArr[]=new String[4];
			for(int i=0;i<num*3;i++) {
				index1[i]=(int)((Math.random()*(36801)+1));
				for(int j=0;j<i;j++) {
					if(index1[i]==index1[j])i--;
				}
			}
			List<WordcollectionVO> wordVO3=new ArrayList();
			wordVO3 = wordpdfService.wordpdfread(index1);
			String word_collect[]=new String[num];
			int cnt1=0;
			for(int i=0;i<num;i++) {
				word_collect[i]=wordVO2.get(i).getWord_trans();
				wordVO2.get(i).setWord_trans1(wordVO3.get(i).getWord_trans());
			}
			mav.addObject("word_collect",word_collect);
			for(int i=num;i<num*2;i++) {
				wordVO2.get(cnt1).setWord_trans2(wordVO3.get(i).getWord_trans());
				cnt1++;
			}
			cnt1 =0;
			for(int i=num*2;i<num*3;i++) {
				wordVO2.get(cnt1).setWord_trans3(wordVO3.get(i).getWord_trans());
				cnt1++;
			}
			
			//보기 1~4번 섞기
			for(int i=1;i<num;i++) {
			randomArr[0]=wordVO2.get(i).getWord_trans();
			randomArr[1]=wordVO2.get(i).getWord_trans1();
			randomArr[2]=wordVO2.get(i).getWord_trans2();
			randomArr[3]=wordVO2.get(i).getWord_trans3();
			int random1=(int)((Math.random()*(4)+0));
			int random2=(int)((Math.random()*(4)+0));
			int random3=(int)((Math.random()*(4)+0));
			int random4=(int)((Math.random()*(4)+0));
			if(random1==random2||random1==random3||random1==random4)i--;
			else if(random2==random3||random2==random4)i--;
			else if(random3==random4)i--;
			else {
			wordVO2.get(i).setWord_trans(randomArr[random1]);
			wordVO2.get(i).setWord_trans1(randomArr[random2]);
			wordVO2.get(i).setWord_trans2(randomArr[random3]);
			wordVO2.get(i).setWord_trans3(randomArr[random4]);
			}
			}
		 mav.addObject("gugudan",gugudan_name);
		 mav.addObject("num",num);
			mav.addObject("wpdf_view", wordVO2);
			mav.addObject("class_name",gugudan_name);
			mav.setViewName("user/examObjective");
		System.out.println(wordVO1.get(0).getWord_seq()+" "+wordVO1.size()+" "+wordVO2.size());
		return mav;
	}
	
}
