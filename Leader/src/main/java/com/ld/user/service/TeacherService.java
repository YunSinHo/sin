package com.ld.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ld.user.dao.ITeacherDao;
import com.ld.user.vo.TeacherVO;


@Service
public class TeacherService {
	@Autowired
	ITeacherDao teacherDao;

	public List<TeacherVO> teacherList() {
		return teacherDao.teacherList();
	}
	public void insertTeacher(TeacherVO teacherVO2) {
		teacherDao.insertTeacher(teacherVO2);
		
	
}
	public TeacherVO loginTeacher(String id, String password) {
		return teacherDao.loginTeacher( id,password);
	}
	public void approveJoinTeacher(int id) {
		teacherDao.approveJoinTeacher(id);
		
	}
	public void quitTeacher(int id1) {
		teacherDao.quitTeacher(id1);
		
	}
	public void rejoinTeacher(int id) {
		teacherDao.rejoinTeacher(id);
		
	}
	public List<TeacherVO> teacherStandByList() {
		// TODO Auto-generated method stub
		return teacherDao.teacherStandByList();
	}
	public List<TeacherVO> teacherQuitList() {
		// TODO Auto-generated method stub
		return teacherDao.teacherQuitList();
	}
}
