package com.ld.admin.dao;

import com.ld.admin.vo.MaterialVO;
import com.ld.user.vo.Criteria;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IMaterialDao {

	List<MaterialVO> materiallist(Criteria cr);

	void materialInsert(MaterialVO materialVO);

	MaterialVO materialread(int material_seq);

}
