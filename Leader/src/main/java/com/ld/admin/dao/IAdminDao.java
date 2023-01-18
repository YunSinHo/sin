package com.ld.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ld.admin.vo.AdminVO;
import com.ld.admin.vo.AdminworkVO;

@Mapper
public interface IAdminDao {

	AdminVO adminloginCheck(String adminid);

	void adminregister(AdminVO adminVO);

	List<AdminworkVO> adminworkfixview(AdminworkVO adminworkVO);

	List<AdminworkVO> adminworkexceptedview(AdminworkVO adminworkVO);

	List<AdminworkVO> adminworkdayview(AdminworkVO adminworkVO);

	List<AdminworkVO> adminworkmonthlyview(AdminworkVO adminworkVO);

}