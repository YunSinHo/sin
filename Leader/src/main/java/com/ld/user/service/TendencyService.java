package com.ld.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ld.user.dao.ITendencyDao;
import com.ld.user.vo.Criteria;
import com.ld.user.vo.TendencyVO;

@Service
public class TendencyService {
@Autowired
private ITendencyDao tendencyDao;
	public void tendencyInsert(TendencyVO tendencyVO) {
		tendencyDao.tendencyInsert(tendencyVO);
		
	}

	public List<TendencyVO> tendencylist(Criteria criteria) {
		// TODO Auto-generated method stub
		return tendencyDao.tendencylist(criteria);
	}

	public TendencyVO tendencyresult(int tendency_seq) {
		// TODO Auto-generated method stub
		return tendencyDao.tendencyresult(tendency_seq);
	}

}
