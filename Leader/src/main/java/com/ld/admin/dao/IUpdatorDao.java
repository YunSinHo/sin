package com.ld.admin.dao;

import org.apache.ibatis.annotations.Mapper;

import com.ld.admin.vo.UpdatorVO;

@Mapper
public interface IUpdatorDao {

 public	void updateUpdator(UpdatorVO updatorVO);

}
