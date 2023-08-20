package com.ld.user.dao;

import com.ld.user.vo.UserVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IUserDao {

	public void userregister(UserVO userVO);

	public UserVO getUser(String user_id, String user_password);


}
