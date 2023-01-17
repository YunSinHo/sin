package com.ld.admin.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ld.admin.dao.ITransDao;
@Service
public class TransService {

	@Autowired
	ITransDao transDao;
	public void transinsert(List<Map<String, Object>> param) {
		transDao.transinsert(param);
		
	}

}
