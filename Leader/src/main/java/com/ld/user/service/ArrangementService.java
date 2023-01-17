package com.ld.user.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ld.user.dao.IArrangementDao;
import com.ld.user.vo.ArrangementVO;
import com.ld.user.vo.Criteria;

@Service
public class ArrangementService {

	@Autowired
	private IArrangementDao arrangementDao;
	public void arrangementinsert(List<Map<String, Object>> param) {
		arrangementDao.arrangementinsert( param);
		
	}

	public List<ArrangementVO> arrangementlist_page(Criteria criteria) {
		return arrangementDao.arrangementlist_page(criteria);
	}

	public List<Object> arrangementread(String arrangement_name) {
		return arrangementDao.arrangementread(arrangement_name);
	}

}
