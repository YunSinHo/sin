package com.ld.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ld.admin.vo.MaterialVO;
import com.ld.user.vo.Criteria;

@Mapper
public interface IMaterialDao {

	List<MaterialVO> materiallist(Criteria cr);

	void materialInsert(MaterialVO materialVO);

	MaterialVO materialread(int material_seq);

}
