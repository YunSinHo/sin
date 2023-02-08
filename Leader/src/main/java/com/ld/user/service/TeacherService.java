package com.ld.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ld.admin.vo.ReportVO;
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
	public TeacherVO teacherOne(int id) {
		// TODO Auto-generated method stub
		return teacherDao.teacherOne(id);
	}
	public List<ReportVO> reportList() {
		// TODO Auto-generated method stub
		return teacherDao.reportList();
	}
	public void orderWorkOne(ReportVO reportVO) {
		teacherDao.orderWorkOne(reportVO);
		
	}
	public ReportVO orderListOne(int id) {
		return teacherDao.orderListOne(id);
	}
	public List<ReportVO> orderListTeacherOne(int id) {
		return teacherDao.orderListTeacherOne(id);
	}
	public void checkOrder(int id) {
		teacherDao.checkOrder(id);
		
	}
	public List<ReportVO> orderListCheckTeacherOne(int teacher_id) {
		
		return teacherDao.orderListCheckTeacherOne(teacher_id);
	}
	public void fulfillEnd(int id) {
		teacherDao.fulfillEnd(id);
	}
	public List<ReportVO> reportListDate(String choiceDate) {
		return teacherDao.reportListDate(choiceDate);
	}
	public void successFinal(int id) {
		teacherDao.successFinal(id);
	}
	public void addJointOrder(String string) {
		teacherDao.addJointOrder(string);
		
	}
	public List<ReportVO> jointOrderList() {
		// TODO Auto-generated method stub
		return teacherDao.jointOrderList();
	}
	public void deletejointOrder(int id) {
		teacherDao.deletejointOrder(id);
	}
	public void addTodayOrder(ReportVO reportVO) {
		teacherDao.addTodayOrder(reportVO);
		
	}
}
