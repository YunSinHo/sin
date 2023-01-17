package com.ld.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ld.admin.vo.CarrotVO;
import com.ld.admin.vo.StudentVO;

@Mapper
public interface IStudentDao {

	List<CarrotVO> carrotList1(String student_parentnumber);

	StudentVO studentList1(String student_parentnumber);

	List<StudentVO> studentList();

}
