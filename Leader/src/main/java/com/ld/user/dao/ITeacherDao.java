package com.ld.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

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

	void fulfillEnd(int id);

	List<ReportVO> reportListDate(String choiceDate);

	void successFinal(int id);

	void addJointOrder(String string);

	List<ReportVO> jointOrderList();

	void deletejointOrder(int id);

	void addTodayOrder(ReportVO reportVO);

}
