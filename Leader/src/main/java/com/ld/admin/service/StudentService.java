package com.ld.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ld.admin.dao.IStudentDao;
import com.ld.admin.vo.CarrotVO;
import com.ld.admin.vo.StudentClassAllVO;
import com.ld.user.vo.StudentClassVO;
import com.ld.user.vo.StudentVO;

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

	public List<StudentVO> studentListSelect(String[] student_parentnumber) {
		return studentDao.studentListSelect(student_parentnumber);
	}

	public StudentVO loginStudent(String id, String password) {
		return studentDao.loginStudent(id,password);
	}

	public List<StudentClassVO> studentClassList(int id) {
		return studentDao.studentClassList(id);
	}

	public void insertStudent(StudentVO studentVO) {
		studentDao.insertStudent(studentVO);
		
	}

	public List<StudentClassVO> studentClassListAll(int id) {
		return studentDao.studentClassListAll(id);
	}

	public List<StudentClassVO> studentClassName(int id) {
		return studentDao.studentClassName(id);
	}

	public List<StudentClassAllVO> studentClassId() {
		return studentDao.studentClassId();
	}

	public int studentClassCount(int id) {
		return studentDao.studentClassCount(id);
	}

	public void insertStudentClass(int id, String string) {
			studentDao.insertStudentClass(id, string);
	}

	public void deleteStudentClass(int id, String string) {
		studentDao.deleteStudentClass(id, string);
	}

}
