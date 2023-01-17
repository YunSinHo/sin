package com.ld.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ld.admin.dao.IAcademyDao;
import com.ld.admin.vo.AcademyVO;
import com.ld.user.vo.Criteria;

@Service
public class AcademyService {

	@Autowired
	private IAcademyDao academyDao;

	public List<AcademyVO> academylist(Criteria cr) {
		return academyDao.academylist(cr);
	}

	public void academyInsert(AcademyVO academyVO) {
		academyDao.academyInsert(academyVO);
		
	}

	public AcademyVO academyread(int academy_seq) {
		return academyDao.academyread(academy_seq);
	}
	
	
	
	}


