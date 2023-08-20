package com.ld.admin.service;

import com.ld.admin.dao.ITransDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class TransService {

	@Autowired
	ITransDao transDao;
	public void transinsert(List<Map<String, Object>> param) {
		transDao.transinsert(param);
		
	}

}
