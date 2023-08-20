package com.ld.admin.service;

import com.ld.admin.dao.IAdminDao;
import com.ld.admin.vo.AdminworkVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminworkService {
@Autowired
IAdminDao adminDao;
	public List<AdminworkVO> adminworkfixview(AdminworkVO adminworkVO) {
		return adminDao.adminworkfixview( adminworkVO);
	}

	public List<AdminworkVO> adminworkexceptedview(AdminworkVO adminworkVO) {
		return adminDao.adminworkexceptedview(adminworkVO);
	}

	public List<AdminworkVO> adminworkdayview(AdminworkVO adminworkVO) {
		return adminDao.adminworkdayview(adminworkVO);
	}

	public List<AdminworkVO> adminworkmonthlyview(AdminworkVO adminworkVO) {
		return adminDao.adminworkmonthlyview( adminworkVO);
	}

}
