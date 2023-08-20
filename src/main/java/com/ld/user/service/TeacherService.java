package com.ld.user.service;

import com.ld.admin.vo.PostscriptVO;
import com.ld.admin.vo.ReportVO;
import com.ld.user.dao.ITeacherDao;
import com.ld.user.vo.TeacherVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.List;


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
	public void fulfillEnd(int id, String content) {
		teacherDao.fulfillEnd(id,content);
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
	public List<ReportVO> finishOrderTeacher() {
		return teacherDao.finishOrderTeacher();
	}
	public List<ReportVO> incompleteOrder() {
		// TODO Auto-generated method stub
		return teacherDao.incompleteOrder();
	}
	public List<ReportVO> ongoingOrder() {
		return teacherDao.ongoingOrder();
	}
	public List<ReportVO> finishOrderTeacher(String choiceDate) {
		// TODO Auto-generated method stub
		return teacherDao.finishOrderTeacherchoiceDate(choiceDate);
	}
	public List<ReportVO> incompleteOrder(String choiceDate) {
		// TODO Auto-generated method stub
		return teacherDao.incompleteOrderchoiceDate(choiceDate);
	}
	public List<ReportVO> ongoingOrder(String choiceDate) {
		// TODO Auto-generated method stub
		return teacherDao.ongoingOrderchoiceDate(choiceDate);
	}
	public void reOrder(ReportVO reportVO) {
		teacherDao.reOrder(reportVO);
		
	}
	public List<ReportVO> realJointOrderList() {
		// TODO Auto-generated method stub
		return teacherDao.realJointOrderList();
	}
	public List<ReportVO> todayOrderList(int id) {
		// TODO Auto-generated method stub
		return teacherDao.todayOrderList(id);
	}
	public List<ReportVO> incompleteOrderOne(int id) {
		// TODO Auto-generated method stub
		return teacherDao.incompleteOrderOne(id);
	}
	public List<ReportVO> longOrderList(int id) {
		// TODO Auto-generated method stub
		return teacherDao.longOrderList(id);
	}
	public void longOrderFulfill(ReportVO reportVO) {
		 teacherDao.longOrderFulfill(reportVO);
		
	}
	public void insertPostscript(PostscriptVO postscriptVO) {
		teacherDao.insertPostscript(postscriptVO);
		
	}
	public List<ReportVO> longOrderListAll() {
		// TODO Auto-generated method stub
		return teacherDao.longOrderListAll();
	}
	public List<PostscriptVO> postscriptList() {
		return teacherDao.postscriptList();
	}
	public void deleteOrder(int id) {
		teacherDao.deleteOrder(id);
		
	}
	public void deletePostscript(int id) {
		teacherDao.deletePostscript(id);
		
	}
	public List<ReportVO> incompleteOrderOneDate(int id, String deadline) {
		// TODO Auto-generated method stub
		return teacherDao.incompleteOrderOneDate(id,deadline);
	}
	public List<ReportVO> longOrderListDate(int id, String deadline) {
		// TODO Auto-generated method stub
		return teacherDao.longOrderListDate(id,deadline);
	}
	public List<ReportVO> dailyOrderList(int id, String date) {
		// TODO Auto-generated method stub
		return teacherDao.dailyOrderList(id,date);
	}
	public void insertDailyOrderSample(int teacher_id, String string, String name) {
		teacherDao.insertDailyOrderSample(teacher_id,string,name);
		
	}
	public List<ReportVO> dailyOrderSampleList(int teacher_id) {
		// TODO Auto-generated method stub
		return teacherDao.dailyOrderSampleList(teacher_id);
	}
	public void insertDailyOrder(int teacher_id, String teacher_name, String title, Timestamp timestamp) {
		teacherDao.insertDailyOrder(teacher_id,teacher_name,title,timestamp);
		
	}
	public void deleteDailyOrder(int teacher_id) {
		teacherDao.deleteDailyOrder(teacher_id);
		
	}
	public List<TeacherVO> deptList() {
		// TODO Auto-generated method stub
		return teacherDao.deptList();
	}
	public List<TeacherVO> teacherDept(String string) {
		// TODO Auto-generated method stub
		return teacherDao.teacherDept(string);
	}
	public List<ReportVO> dailyOrderList2(int id, String date) {
		// TODO Auto-generated method stub
		return teacherDao.dailyOrderList2(id,date);
	}
	public long[] reportFileId() {
		// TODO Auto-generated method stub
		return teacherDao.reportFileId();
	}
	public long[] reportFileReportId() {
		// TODO Auto-generated method stub
		return teacherDao.reportFileReportId();
	}
	public List<ReportVO> reorderList(int id) {
		// TODO Auto-generated method stub
		return teacherDao.reorderList(id);
	}
	public void modifyNumber(int id, String number) {
		teacherDao.modifyNumber(id,number);
		
	}
	public void modifyPasswordAndNumber(int id, String password, String number) {
		teacherDao.modifyPasswordAndNumber(id,password,number);
		
	}
}
