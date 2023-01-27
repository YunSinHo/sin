package com.ld.user.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ld.user.service.WordpdfService;
import com.ld.user.vo.WordcollectionVO;
import com.ld.user.vo.WordgugudanVO;

@Controller
public class TestController {
	@Autowired
	private WordpdfService wordpdfService;
	@RequestMapping("/testCheck.do")
	public ModelAndView testCheck(@RequestParam("word_trans") String word_trans[],
			@RequestParam("word_name") String word_name[]) {
		ModelAndView mav=new ModelAndView();
		return mav;
		
	}
	@GetMapping("/wordpdftest1.do")
	public ModelAndView wordpdftestGet(@RequestParam("gugudan_name") String gugudan_name) {
		ModelAndView mav = new ModelAndView();
		WordgugudanVO wordgugudanVO=new WordgugudanVO();
		wordgugudanVO=wordpdfService.getGugudan(gugudan_name);
		List<WordcollectionVO> wordVO= new ArrayList();
		List<WordcollectionVO> wordVO1= new ArrayList();
		//랜덤반복을 위해 seq 끝값 찾기
		WordcollectionVO wordcollectionVO=new WordcollectionVO();
		WordcollectionVO wordcollectionVO1=new WordcollectionVO();
		
		wordcollectionVO=wordpdfService.getMaxSeq(wordgugudanVO.getGugudan_level());
		
		int min1;	
		min1=wordgugudanVO.getGugudan_level()-1;
		if(wordcollectionVO.getWord_difficulty()==1)min1=1;
		wordcollectionVO1=wordpdfService.getMaxSeq1(min1);
		int i1=wordcollectionVO.getWord_seq();
		int i2=wordcollectionVO1.getWord_seq();
		if(wordcollectionVO.getWord_difficulty()==1)i2=0;
		int index[]=new int[60];
		int index1[]=new int[60*4];
		for(int i=0;i<=59;i++) {
			index[i]=(int)((Math.random()*(i1-i2)+i2+1));
			for(int j=0;j<i;j++) {
				if(index[i]==index[j])i--;
			}
		}
		for(int i=0;i<index.length;i++) {
			index1[i]=(int)((Math.random()*i1+1));
			for(int j=0;j<i;j++) {
				if(index1[i]==index1[j])i--;
			}
		}
		
		wordVO1=wordpdfService.randomWordTrans(index1);
		wordVO = wordpdfService.wordpdfread(index);
		
		
		mav.addObject("randomTrans",wordVO1);
		mav.addObject("gugudan",wordgugudanVO);
		mav.addObject("wpdf_view", wordVO);
		mav.setViewName("user/gugudanTest");
		return mav;
	}
}
