package com.ld.admin.dao;

import com.ld.admin.vo.*;
import com.ld.user.vo.ClassAllVO;
import com.ld.user.vo.StudentWordClassVO;
import com.ld.user.vo.TeacherVO;
import org.apache.ibatis.annotations.Mapper;

import java.sql.Timestamp;
import java.util.List;

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

	List<Student_ClassVO> getStudentClassAll();

	List<DepartmentVO> departmentList();

	void updateDept(int id, String string);

	List<StudentClassListVO> studentDaily(int id);

	List<Student_ClassVO> student_classList();

	List<StudentWordClassVO> wordClassList();

	void insertDeptList(String string);

	void deleteDeptList(int id);

	void insertClassList(String string);

	void deleteClassList(int id);


}
