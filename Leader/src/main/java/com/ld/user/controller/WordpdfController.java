package com.ld.user.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
		mav.setViewName("user/wordpdflist");
		return mav;
	}
	@GetMapping("/wordpdf.do")
	public ModelAndView wordpdfGet(@RequestParam("gugudan_name") String gugudan_name) {
		ModelAndView mav = new ModelAndView();
		WordgugudanVO wordgugudanVO=new WordgugudanVO();
		wordgugudanVO=wordpdfService.getGugudan(gugudan_name);
		List<WordcollectionVO> wordVO= new ArrayList();
		wordVO = wordpdfService.wordpdfread(wordgugudanVO.getGugudan_level());
		mav.addObject("wpdf_view", wordVO);
		mav.addObject("gugudan",wordgugudanVO);
		mav.setViewName("user/wordpdf");
		return mav;
	}
	@GetMapping("/wordpdftest.do")
	public ModelAndView wordpdftestGet(@RequestParam("gugudan_name") String gugudan_name,
			HttpServletRequest request,
			@RequestParam("num")int num) {
		HttpSession session=request.getSession();
		ModelAndView mav = new ModelAndView();
		String class_name=(String)session.getAttribute("student_class");
		session.setAttribute("num",num);
		WordgugudanVO wordgugudanVO=new WordgugudanVO();
		wordgugudanVO=wordpdfService.getGugudan(gugudan_name);
		List<WordcollectionVO> wordVO= new ArrayList();
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
		
		for(int i=0;i<index.length;i++) {
			index[i]=(int)((Math.random()*(end)+start));
			for(int j=0;j<i;j++) {
				if(index[i]==index[j])i--;
			}
		}
		
		
		wordVO = wordpdfService.wordpdfread(index);
		mav.addObject("gugudan",wordgugudanVO);
		mav.addObject("wpdf_view", wordVO);
		mav.addObject("class_name",class_name);
		mav.setViewName("user/wordpdftest");
		return mav;
	}
	@RequestMapping("examObjective.do")
	public ModelAndView examObjective(@RequestParam("gugudan_name") String gugudan_name,
			HttpServletRequest request,
			@RequestParam("num")int num) {
		HttpSession session=request.getSession();
		ModelAndView mav = new ModelAndView();
		String class_name=(String)session.getAttribute("student_class");
		session.setAttribute("num",num);
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
		
		List<WordcollectionVO> wordVO2=new ArrayList();
		
		wordVO2 = wordpdfService.wordpdfread(index);
		
		for(int i=0;i<num;i++) {
			wordVO2.add(i, null);
		}
		
		System.out.println(wordVO2.get(0).getWord_trans1());
		wordVO2 = wordpdfService.wordpdfread(index);
		mav.addObject("wpdf_view", wordVO2);
		mav.addObject("class_name",class_name);
		mav.setViewName("user/examObjective");
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
