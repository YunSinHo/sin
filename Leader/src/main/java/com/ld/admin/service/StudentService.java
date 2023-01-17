package com.ld.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ld.admin.dao.IStudentDao;
import com.ld.admin.vo.CarrotVO;
import com.ld.admin.vo.StudentVO;

@Service
public class StudentService {

	@Autowired
	private IStudentDao studentDao;
	
	public List<CarrotVO> carrotList1(String student_parentnumber) {
		return studentDao.carrotList1(student_parentnumber);
	}

	public StudentVO studentList1(String student_parentnumber) {
		return studentDao.studentList1(student_parentnumber);
	}

	public List<StudentVO> studentList() {
		return studentDao.studentList();
	}

}
