package com.ld.admin.controller;

import com.ld.admin.service.AdminworkService;
import com.ld.admin.vo.AdminworkVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.inject.Inject;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class AdminworkController {
	@Autowired
	private final AdminworkService adminworkService;
	
	@Inject
	public AdminworkController(AdminworkService adminworkService) {
		this.adminworkService = adminworkService;
	}
	
	@GetMapping("/workdivide.mdo")
	public String workdivideGet() {
		return "admin/workdivide";
	}
	
	@RequestMapping("/worklist.mdo")
	@ResponseBody
	public Map<String, Object> adminworkGet(AdminworkVO adminworkVO){
		
		Map<String, Object> map = new HashMap<String,Object>();
		
		List<AdminworkVO> fix = adminworkService.adminworkfixview(adminworkVO);
		List<AdminworkVO> excepted = adminworkService.adminworkexceptedview(adminworkVO);
		List<AdminworkVO> day = adminworkService.adminworkdayview(adminworkVO);
		List<AdminworkVO> monthly = adminworkService.adminworkmonthlyview(adminworkVO);
		
		map.put("adminworkfix", fix);
		map.put("adminworkexcepted", excepted);
		map.put("adminworkday", day);
		map.put("adminworkmonthly", monthly);
		return map;
	}
}
