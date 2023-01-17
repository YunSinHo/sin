package com.ld.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ld.user.vo.Criteria;
import com.ld.user.vo.TendencyVO;

@Mapper
public interface ITendencyDao {

	void tendencyInsert(TendencyVO tendencyVO);

	List<TendencyVO> tendencylist(Criteria criteria);

	TendencyVO tendencyresult(int tendency_seq);

}
