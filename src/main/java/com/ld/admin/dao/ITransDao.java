package com.ld.admin.dao;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface ITransDao {

	public void transinsert(List<Map<String, Object>> param);

}
