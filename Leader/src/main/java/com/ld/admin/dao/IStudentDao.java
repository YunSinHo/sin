package com.ld.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ld.admin.vo.CarrotVO;
import com.ld.user.vo.StudentClassVO;
import com.ld.user.vo.StudentVO;

@Mapper
public interface IStudentDao {

	List<CarrotVO> carrotList1(String student_parentnumber);

	StudentVO studentList1(String student_parentnumber);

	List<StudentVO> studentList();

	List<StudentVO> studentListSelect(String[] student_parentnumber);

	StudentVO loginStudent(String id, String password);

	List<StudentClassVO> studentClassList(int id);

	void insertStudent(StudentVO studentVO);

	List<StudentClassVO> studentClassListAll(int id);

	List<StudentClassVO> studentClassName(int id);


}
