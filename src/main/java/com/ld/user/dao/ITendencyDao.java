package com.ld.user.dao;

import com.ld.user.vo.Criteria;
import com.ld.user.vo.TendencyVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ITendencyDao {

	void tendencyInsert(TendencyVO tendencyVO);

	List<TendencyVO> tendencylist(Criteria criteria);

	TendencyVO tendencyresult(int tendency_seq);

}
