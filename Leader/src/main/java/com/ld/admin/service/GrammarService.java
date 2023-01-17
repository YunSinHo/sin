package com.ld.admin.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ld.admin.dao.IGrammarDao;
@Service
public class GrammarService {
@Autowired
IGrammarDao grammarDao;
	public void grammarinsert(List<Map<String, Object>> param) {
		grammarDao.grammarinsert(param);
		
	}

}
