package com.ld.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ld.admin.vo.GrammarVO;
import com.ld.admin.vo.TransVO;
import com.ld.user.dao.IBoardDao;
import com.ld.user.vo.Criteria;
import com.ld.user.vo.WordcollectionVO;

@Service
public class BoardService {

	@Autowired
	private IBoardDao boardDao;
	
	public List<GrammarVO> showgrammar_page(Criteria criteria) {
		return boardDao.showgrammar_page(criteria);
	}

	public List<Object> grammarread(String grammar_title) {
		return boardDao.grammarread( grammar_title);
	}

	public List<WordcollectionVO> wordcollection(Criteria criteria) {
		return boardDao.wordcollection( criteria);
	}

	public List<TransVO> showtrans_page(Criteria criteria) {
		return boardDao.showtrans_page(criteria);
	}

	public List<Object> transread(String trans_title) {
		// TODO Auto-generated method stub
		return boardDao.transread(trans_title);
	}

}
