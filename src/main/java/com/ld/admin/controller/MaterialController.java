package com.ld.admin.controller;

import com.ld.admin.service.MaterialService;
import com.ld.admin.vo.MaterialVO;
import com.ld.user.vo.Criteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class MaterialController {

	@Autowired
	private final MaterialService materialService;

	@Inject
	public MaterialController(MaterialService materialService) {
		this.materialService = materialService;
	}
	@RequestMapping(value = "/materiallist.mdo")
	public ModelAndView materiallistGet(Model model,HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		if(session.getAttribute("admin")== null) {
			mav.setViewName("admin/adminlogin");
		}else {
			mav.setViewName("admin/materiallist");
		}
		Criteria cr = null;
		List<MaterialVO> showList = new ArrayList<MaterialVO>();
		showList = materialService.materiallist(cr);
		mav.addObject("MaterialList", showList);
		return mav;
	}
	@GetMapping("/materialinsert.mdo")
	public String materialinsertGet() {
		return "admin/materialinsert";
	}
	@RequestMapping(value = "/insertmaterial.mdo", method = RequestMethod.POST)
	public String material_insertGet(@ModelAttribute MaterialVO materialVO) {
		materialService.materialInsert(materialVO);
//		System.out.println(ad_encyVO.toString());
		return "redirect:/materiallist.mdo";
	}
	@RequestMapping("/materialview.mdo")
	public ModelAndView getmaterialGet(@RequestParam int material_seq, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if(session.getAttribute("admin")== null) {
			mav.setViewName("admin/adminlogin");
		}else {
			mav.setViewName("admin/materialview");
		}
		MaterialVO materialVO;
		materialVO = materialService.materialread(material_seq);
		mav.addObject("notice_view", materialVO);
		return mav;
	}
}
