package com.ld.admin.dao;

import java.sql.Timestamp;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ld.admin.vo.AdminVO;
import com.ld.admin.vo.AdminworkVO;
import com.ld.admin.vo.ClassPlanningVO;
import com.ld.admin.vo.Student_ClassVO;
import com.ld.user.vo.ClassAllVO;
import com.ld.user.vo.StudentClassVO;
import com.ld.user.vo.TeacherVO;

@Mapper
public interface IAdminDao {

	AdminVO adminloginCheck(String adminid);

	void adminregister(AdminVO adminVO);

	List<AdminworkVO> adminworkfixview(AdminworkVO adminworkVO);

	List<AdminworkVO> adminworkexceptedview(AdminworkVO adminworkVO);

	List<AdminworkVO> adminworkdayview(AdminworkVO adminworkVO);

	List<AdminworkVO> adminworkmonthlyview(AdminworkVO adminworkVO);

	TeacherVO loginTeacher(String id, String password);

	List<ClassAllVO> getClassAll();

	void addStudyPlan(Timestamp timestamp, int choiceArr, int week, int classId, String title, String bookName, String className);

	List<Student_ClassVO> studentClassList();

	List<ClassPlanningVO> PlanningList();


}
