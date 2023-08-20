package com.ld.user.dao;

import com.ld.admin.vo.GrammarVO;
import com.ld.admin.vo.TransVO;
import com.ld.user.vo.Criteria;
import com.ld.user.vo.WordcollectionVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IBoardDao {

	List<GrammarVO> showgrammar_page(Criteria criteria);

	List<Object> grammarread(String grammar_title);

	List<WordcollectionVO> wordcollection(Criteria criteria);

	List<TransVO> showtrans_page(Criteria criteria);

	List<Object> transread(String trans_title);

}
