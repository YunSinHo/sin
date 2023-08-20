package com.ld.user.service;

import com.ld.user.dao.IUserDao;
import com.ld.user.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

@Service
public class UserService {
@Autowired
private IUserDao userDao;

	public void logout(HttpSession session) {
		session.invalidate();
		
	}

	public void userregister(UserVO userVO) {
		userDao.userregister(userVO);
		
	}

	public UserVO getUser(String user_id, String user_password) {
		return userDao.getUser( user_id,user_password);
	}

}
