package com.ld.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ld.admin.dao.IUpdatorDao;
import com.ld.admin.vo.UpdatorVO;

@Service
public class UpdatorService {
@Autowired
private IUpdatorDao carrotService;
	public void updateUpdator(UpdatorVO updatorVO) {
		carrotService.updateUpdator(updatorVO);
	}

}
