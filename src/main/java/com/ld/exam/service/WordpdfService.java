package com.ld.exam.service;

import com.ld.exam.dao.IWordpdfDao;
import com.ld.exam.vo.ExamVO;
import com.ld.exam.vo.WordcollectionVO;
import com.ld.exam.vo.WordgugudanVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

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

	public List<WordcollectionVO> randomWordTrans(int[] index1) {
		// TODO Auto-generated method stub
		return IwordpdfDao.randomWordTrans(index1);
	}

	public void insertExamGugudan(ExamVO examVO) {
		IwordpdfDao.insertExamGugudan(examVO);
		
	}

	public ExamVO getExam(int id) {
		// TODO Auto-generated method stub
		return IwordpdfDao.getExam(id);
	}

	public List<ExamVO> getExamList(int id, String student_class) {
		// TODO Auto-generated method stub
		return IwordpdfDao.getExamList(id,student_class);
	}

	public int getStartSeq(int min) {
		return IwordpdfDao.getStartSeq(min);
	}

	public int getEndSeq(int max) {
		return IwordpdfDao.getEndSeq(max);
	}

	public List<WordcollectionVO> wordExamPage(int[] index) {
		return IwordpdfDao.wordExamPage(index);
	}

	public List<WordcollectionVO> getSentenceWord(int start, int end) {
		return IwordpdfDao.getSentenceWord(start,end);
	}

	public List<ExamVO> getExamListAll(int id) {
		return IwordpdfDao.getExamListAll(id);
	}

	

}
