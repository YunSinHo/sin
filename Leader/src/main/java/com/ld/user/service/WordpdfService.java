package com.ld.user.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ld.user.dao.IWordpdfDao;
import com.ld.user.vo.WordcollectionVO;
import com.ld.user.vo.WordgugudanVO;

@Service
public class WordpdfService {

	@Autowired
	private IWordpdfDao IwordpdfDao;
	public List<WordgugudanVO> wordpdflist_page() {
		// TODO Auto-generated method stub
		return IwordpdfDao.wordpdflist_page();
	}

	public WordgugudanVO getGugudan(String gugudan_name) {
		// TODO Auto-generated method stub
		return IwordpdfDao.getGugudan( gugudan_name);
	}

	public List<WordcollectionVO> wordpdfread(int gugudan_level) {
		// TODO Auto-generated method stub
		return IwordpdfDao.wordpdfread(gugudan_level);
	}

	public WordcollectionVO getMaxSeq(int gugudan_level) {
		// TODO Auto-generated method stub
		return IwordpdfDao.getMaxSeq(gugudan_level);
	}

	public WordcollectionVO getMaxSeq1(int min1) {
		// TODO Auto-generated method stub
		return IwordpdfDao.getMaxSeq1(min1);
	}

	public List<WordcollectionVO> wordpdfread(int[] index) {
		// TODO Auto-generated method stub
		return IwordpdfDao.wordpdfread1(index);
	}

	public void wordpdfinsert(List<Map<String, Object>> param) {
		IwordpdfDao.wordpdfinsert( param);
		
	}

	public List<WordgugudanVO> wordpdflist_pageSelect(int[] level) {
		// TODO Auto-generated method stub
		return IwordpdfDao.wordpdflist_pageSelect(level);
	}

}
