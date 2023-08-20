package com.ld.admin.dao;

import com.ld.admin.vo.UpdatorVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IUpdatorDao {

 public	void updateUpdator(UpdatorVO updatorVO);

}
