package com.ld.user.dao;

import com.ld.user.vo.Criteria;
import com.ld.user.vo.SchoolmatchVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ISchoolmatchDao {

	public void schoolmatchInsert(SchoolmatchVO schoolmatchVO);

	List<SchoolmatchVO> schoolmatchlist(Criteria criteria);

	SchoolmatchVO schoolmatchresult(int schoolmatch_seq);

}
