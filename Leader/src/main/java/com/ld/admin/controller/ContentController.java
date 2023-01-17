package com.ld.admin.controller;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ld.admin.service.GrammarService;
import com.ld.admin.service.TransService;

@Controller
public class ContentController {
	
	@Autowired
	private GrammarService grammarService;
	@Autowired
	private TransService transService;

	@GetMapping("/maincontent.mdo")
	public String maincontentGet() {
		return "admin/maincontent";
	}
	@GetMapping("/insertgrammar.mdo")
	public String insertgrammarGet() {
		return "admin/insertgrammar";
	}
	@ResponseBody
    @RequestMapping(value = "/grammarinsert.mdo", method = RequestMethod.POST)
	public List<Map<String, Object>> grammarin(@RequestBody List<Map<String, Object>> param) {
		//sqlSessionTemplate.insert("grammar.grammarinsert",param);
		grammarService.grammarinsert(param);
		return param;
	}
	@GetMapping("/transinsert.mdo")
	public String transinsertGet() {
		return "admin/transinsert";
	}
	@ResponseBody
    @RequestMapping(value = "/inserttrans.mdo", method = RequestMethod.POST)
	public List<Map<String, Object>> inserttrans(@RequestBody List<Map<String, Object>> param) {
		//sqlSessionTemplate.insert("trans.transinsert",param);
		transService.transinsert(param);
		return param;
	}
}
