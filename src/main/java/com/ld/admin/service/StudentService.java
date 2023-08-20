package com.ld.admin.service;

import com.ld.admin.dao.IStudentDao;
import com.ld.admin.vo.CarrotVO;
import com.ld.admin.vo.StudentClassAllVO;
import com.ld.admin.vo.StudentClassListVO;
import com.ld.user.vo.StudentVO;
import com.ld.user.vo.StudentWordClassVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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

	public List<StudentWordClassVO> studentClassList(int id) {
		return studentDao.studentClassList(id);
	}

	public void insertStudent(StudentVO studentVO) {
		studentDao.insertStudent(studentVO);
		
	}

	public List<StudentWordClassVO> studentClassListAll(int id) {
		return studentDao.studentClassListAll(id);
	}

	public List<StudentWordClassVO> studentClassName(int id) {
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

	public List<StudentVO> studentStandByList() {
		return studentDao.studentStandByList();
	}

	public List<StudentVO> studentQuitList() {
		// TODO Auto-generated method stub
		return studentDao.studentQuitList();
	}

	public List<StudentVO> studentApproveList() {
		return studentDao.studentApproveList();
	}

	public void approveJoinStudent(int id) {
	studentDao.approveJoinStudent(id);
	}

	public void quitStudent(int id) {
		studentDao.quitStudent(id);
		
	}

	public void rejoinStudent(int id) {
		studentDao.rejoinStudent(id);
		
	}

	public StudentVO studentOne(int id) {
		// TODO Auto-generated method stub
		return studentDao.studentOne(id);
	}

	public List<StudentClassAllVO> studentClass() {
		return studentDao.studentClass();
	}

	public List<StudentClassListVO> getStudentClass(int id) {
		// TODO Auto-generated method stub
		return studentDao.getStudentClass(id);
	}

	public void insertStudentWordClass(int id, String string) {
		studentDao.insertStudentWordClass(id, string);
		
	}

	public void deleteStudentWordClass(int id, String string) {
		studentDao.deleteStudentWordClass(id, string);
		
	}

	public void modifyStudentNumber(int id, String number) {
		studentDao.modifyStudentNumber(id,number);
		
	}


	public void modifyStudentPasswordAndNumber(int id, String password, String number) {
		studentDao.modifyStudentPasswordAndNumber(id,password,number);
		
	}


}
