package com.ld.user.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;

import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ld.user.service.WordpdfService;
import com.ld.user.vo.ExamVO;
import com.ld.user.vo.WordcollectionVO;
import com.ld.user.vo.WordgugudanVO;

@Controller
public class ExamController {
	@Autowired
	private WordpdfService wordpdfService;
	@RequestMapping("/testCheck.do")
	public ModelAndView testCheck (@RequestParam("word_trans") String word_trans[],
			@RequestParam("word_name") String word_name[],
			@RequestParam("word_seq") int word_seq[],
			@RequestParam("write") String write[],
			HttpServletRequest request)throws IOException, ParseException {
		 
  
		HttpSession session=request.getSession();
		int id=(int)session.getAttribute("id");
		String student_class=(String)session.getAttribute("student_class");
		String contentArr[]=new String[word_trans.length];
		String contentYet="";
		for(int i=0; i<word_trans.length;i++) {
			contentArr[i]="\"content_id"+i+"\":"+"{\"word_name\":\""+word_name[i]+"\","+"\"word_trans\":\""+word_trans[i]+"\",\"write\":\""
		+write[i]+"\",\"word_seq\":\""+word_seq[i]+"\"},";
			contentYet+=contentArr[i];
		}
		String content="{"+contentYet+"}";
		content=content.substring(0,content.length()-2)+""+content.substring(content.length()-1);
		ExamVO examVO=new ExamVO();
		examVO.setClass_name(student_class);
		examVO.setContent(content);
		examVO.setStudent_id(id);
		//wordpdfService.insertExamGugudan(examVO);
		System.out.println(content);
		ExamVO examVO2=new ExamVO();
		//examVO2=wordpdfService.getExamGugudanContent(3);
		JSONObject jObject = new JSONObject(content);
		JSONObject post1Object = jObject.getJSONObject("content_id0");
	    System.out.println(post1Object.toString());
	    System.out.println();
	    String title = post1Object.getString("word_trans");
	    System.out.println("title(post1): " + title);
	   
	    System.out.println();
        
     
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
