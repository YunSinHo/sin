package com.ld.admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ITransDao {

	public void transinsert(List<Map<String, Object>> param);

}
