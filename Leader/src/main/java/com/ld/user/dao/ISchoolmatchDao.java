package com.ld.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ld.user.vo.Criteria;
import com.ld.user.vo.SchoolmatchVO;

@Mapper
public interface ISchoolmatchDao {

	public void schoolmatchInsert(SchoolmatchVO schoolmatchVO);

	List<SchoolmatchVO> schoolmatchlist(Criteria criteria);

	SchoolmatchVO schoolmatchresult(int schoolmatch_seq);

}
