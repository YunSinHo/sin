package com.ld.user.dao;

import com.ld.user.vo.Criteria;
import com.ld.user.vo.ImsiVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface IImsiDao {

	public void imsiinsert(ImsiVO imsiVO);

	List<ImsiVO> imsilist(Criteria cr);

	ImsiVO imsiread(int imsi_seq);

}
