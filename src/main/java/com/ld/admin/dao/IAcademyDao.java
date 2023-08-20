package com.ld.admin.dao;

import com.ld.admin.vo.AcademyVO;
import com.ld.user.vo.Criteria;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IAcademyDao {

	List<AcademyVO> academylist(Criteria cr);

	void academyInsert(AcademyVO academyVO);

	AcademyVO academyread(int academy_seq);

}
