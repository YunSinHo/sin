package com.ld.user.dao;

import java.sql.Timestamp;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ld.admin.vo.PostscriptVO;
import com.ld.admin.vo.ReportVO;
import com.ld.user.vo.TeacherVO;

@Mapper
public interface ITeacherDao {

	List<TeacherVO> teacherList();

	void insertTeacher(TeacherVO teacherVO2);

	TeacherVO loginTeacher(String id, String password);

	void approveJoinTeacher(int id);

	void quitTeacher(int id1);

	void rejoinTeacher(int id);

	List<TeacherVO> teacherStandByList();

	List<TeacherVO> teacherQuitList();


	TeacherVO teacherOne(int id);

	List<ReportVO> reportList();

	void orderWorkOne(ReportVO reportVO);

	ReportVO orderListOne(int id);

	List<ReportVO> orderListTeacherOne(int id);

	void checkOrder(int id);

	List<ReportVO> orderListCheckTeacherOne(int teacher_id);

	void fulfillEnd(int id, String content);

	List<ReportVO> reportListDate(String choiceDate);

	void successFinal(int id);

	void addJointOrder(String string);

	List<ReportVO> jointOrderList();

	void deletejointOrder(int id);

	void addTodayOrder(ReportVO reportVO);

	List<ReportVO> finishOrderTeacher();

	List<ReportVO> incompleteOrder();

	List<ReportVO> ongoingOrder();

	List<ReportVO> finishOrderTeacherchoiceDate(String choiceDate);

	List<ReportVO> incompleteOrderchoiceDate(String choiceDate);

	List<ReportVO> ongoingOrderchoiceDate(String choiceDate);

	void reOrder(ReportVO reportVO);

	List<ReportVO> realJointOrderList();

	List<ReportVO> todayOrderList(int id);

	List<ReportVO> incompleteOrderOne(int id);

	List<ReportVO> longOrderList(int id);


	public void longOrderFulfill(ReportVO reportVO);

	void insertPostscript(PostscriptVO postscriptVO);

	List<ReportVO> longOrderListAll();

	List<PostscriptVO> postscriptList();

	void deleteOrder(int id);

	void deletePostscript(int id);

	List<ReportVO> incompleteOrderOneDate(int id, String deadline);

	List<ReportVO> longOrderListDate(int id, String deadline);

	List<ReportVO> dailyOrderList(int id, String date);

	void insertDailyOrderSample(int teacher_id, String string, String name);

	List<ReportVO> dailyOrderSampleList(int teacher_id);

	void insertDailyOrder(int teacher_id, String teacher_name, String title, Timestamp timestamp);

	void deleteDailyOrder(int teacher_id);

	List<TeacherVO> deptList();

	List<TeacherVO> teacherDept(String string);

	List<ReportVO> dailyOrderList2(int id, String date);


	long[] reportFileId();

	long[] reportFileReportId();

	List<ReportVO> reorderList(int id);



}
