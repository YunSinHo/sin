package com.ld.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ld.admin.vo.AcademyVO;
import com.ld.user.vo.Criteria;

@Mapper
public interface IAcademyDao {

	List<AcademyVO> academylist(Criteria cr);

	void academyInsert(AcademyVO academyVO);

	AcademyVO academyread(int academy_seq);

}
