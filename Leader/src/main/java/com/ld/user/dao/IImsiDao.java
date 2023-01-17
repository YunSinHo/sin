package com.ld.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ld.user.vo.Criteria;
import com.ld.user.vo.ImsiVO;
@Mapper
public interface IImsiDao {

	public void imsiinsert(ImsiVO imsiVO);

	List<ImsiVO> imsilist(Criteria cr);

	ImsiVO imsiread(int imsi_seq);

}
