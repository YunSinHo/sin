package com.ld.admin.service;

import com.ld.admin.dao.IGrammarDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class GrammarService {
@Autowired
IGrammarDao grammarDao;
	public void grammarinsert(List<Map<String, Object>> param) {
		grammarDao.grammarinsert(param);
		
	}

}
