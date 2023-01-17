package com.ld.user.dao;

import org.apache.ibatis.annotations.Mapper;

import com.ld.user.vo.UserVO;

@Mapper
public interface IUserDao {

	public void userregister(UserVO userVO);

	public UserVO getUser(String user_id, String user_password);


}
