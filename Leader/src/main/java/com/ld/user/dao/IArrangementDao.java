package com.ld.user.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ld.user.vo.ArrangementVO;
import com.ld.user.vo.Criteria;

@Mapper
public interface IArrangementDao {

	public void arrangementinsert(List<Map<String, Object>> param);

	List<ArrangementVO> arrangementlist_page(Criteria criteria);

	List<Object> arrangementread(String arrangement_name);

}
