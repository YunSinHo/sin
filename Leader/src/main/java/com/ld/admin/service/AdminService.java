package com.ld.admin.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ld.admin.dao.IAdminDao;
import com.ld.admin.vo.AdminVO;
import com.ld.user.vo.ClassAllVO;
import com.ld.user.vo.TeacherVO;
@Service
public class AdminService {

	@Autowired 
	IAdminDao admindao;
	public AdminVO adminloginCheck(String adminid) {
		return admindao.adminloginCheck(adminid);
	}
	public void logout(HttpSession session) {
		session.invalidate();
	}
	public void adminregister(AdminVO adminVO) {
		admindao.adminregister(adminVO);
	}
	public TeacherVO loginTeacher(String id, String password) {
		// TODO Auto-generated method stub
		return admindao.loginTeacher( id,password);
	}
	public List<ClassAllVO> getClassAll() {
		// TODO Auto-generated method stub
		return admindao.getClassAll();
	}
	public List<TeacherVO> teacherList() {
		return admindao.teacherList();
	}
	public void insertTeacher(TeacherVO teacherVO2) {
		admindao.insertTeacher(teacherVO2);
		
	}

}
