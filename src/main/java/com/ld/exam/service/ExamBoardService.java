package com.ld.exam.service;

import com.ld.admin.vo.GrammarVO;
import com.ld.admin.vo.TransVO;
import com.ld.exam.dao.IBoardDao;
import com.ld.exam.vo.WordcollectionVO;
import com.ld.user.vo.Criteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ExamBoardService {

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
		return boardDao.transread(trans_title);
	}

}
