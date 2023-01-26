package com.ld.user.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ld.user.vo.WordcollectionVO;
import com.ld.user.vo.WordgugudanVO;

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

}
