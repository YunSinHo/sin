package com.ld.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ld.user.dao.IImsiDao;
import com.ld.user.vo.Criteria;
import com.ld.user.vo.ImsiVO;

@Service
public class ImsiService {

	@Autowired
	private IImsiDao imsiDao;
	public void imsiinsert(ImsiVO imsiVO) {
		imsiDao.imsiinsert( imsiVO);
	}

	public List<ImsiVO> imsilist(Criteria cr) {
		return imsiDao.imsilist(cr);
	}

	public ImsiVO imsiread(int imsi_seq) {
		return imsiDao.imsiread(imsi_seq);
	}

}
