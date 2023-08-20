package com.ld.exam.dao;

import com.ld.exam.vo.ExamVO;
import com.ld.exam.vo.WordcollectionVO;
import com.ld.exam.vo.WordgugudanVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface IWordpdfDao {

	List<WordgugudanVO> wordpdflist_page();

	public WordgugudanVO getGugudan(String gugudan_name);

	List<WordcollectionVO> wordpdfread(int gugudan_level);

	public WordcollectionVO getMaxSeq(int gugudan_level);

	public WordcollectionVO getMaxSeq1(int min1);

	List<WordcollectionVO> wordpdfread1(int[] index);

	public void wordpdfinsert(List<Map<String, Object>> param);

	List<WordgugudanVO> wordpdflist_pageSelect(int[] level);

	List<WordcollectionVO> randomWordTrans(int[] index1);

	void insertExamGugudan(ExamVO examVO);

	ExamVO getExam(int id);

	List<ExamVO> getExamList(int id, String student_class);

	int getStartSeq(int min);

	int getEndSeq(int max);

	List<WordcollectionVO> wordExamPage(int[] index);


	List<WordcollectionVO> getSentenceWord(int start, int end);

	List<ExamVO> getExamListAll(int id);


}
