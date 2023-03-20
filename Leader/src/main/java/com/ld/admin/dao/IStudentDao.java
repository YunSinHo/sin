package com.ld.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ld.admin.vo.CarrotVO;
import com.ld.admin.vo.StudentClassAllVO;
import com.ld.admin.vo.StudentClassListVO;
import com.ld.admin.vo.Student_ClassVO;
import com.ld.user.vo.StudentVO;
import com.ld.user.vo.StudentWordClassVO;

@Mapper
public interface IStudentDao {

	List<CarrotVO> carrotList1(String student_parentnumber);

	StudentVO studentList1(String student_parentnumber);

	List<StudentVO> studentList();

	List<StudentVO> studentListSelect(String[] student_parentnumber);

	StudentVO loginStudent(String id, String password);

	List<StudentWordClassVO> studentClassList(int id);

	void insertStudent(StudentVO studentVO);

	List<StudentWordClassVO> studentClassListAll(int id);

	List<StudentWordClassVO> studentClassName(int id);

	List<StudentClassAllVO> studentClassId();

	int studentClassCount(int id);

	void insertStudentClass(int id, String string);

	void deleteStudentClass(int id, String string);

	List<StudentVO> studentStandByList();

	List<StudentVO> studentQuitList();

	List<StudentVO> studentApproveList();

	void approveJoinStudent(int id);

	void quitStudent(int id);

	void rejoinStudent(int id);

	StudentVO studentOne(int id);

	List<StudentClassAllVO> studentClass();

	List<StudentClassListVO> getStudentClass(int id);

	void insertStudentWordClass(int id, String string);


	void deleteStudentWordClass(int id, String string);

	void modifyStudentNumber(int id, String number);

	void modifyStudentPasswordAndNumber(String password, String number);

	void modifyStudentPasswordAndNumber(int id, String password, String number);



}
