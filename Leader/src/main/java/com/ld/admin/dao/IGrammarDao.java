package com.ld.admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IGrammarDao {

	public void grammarinsert(List<Map<String, Object>> param);

}
