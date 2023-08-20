package com.ld.admin.service;

import com.ld.admin.dao.IAdminDao;
import com.ld.admin.vo.*;
import com.ld.user.vo.ClassAllVO;
import com.ld.user.vo.StudentWordClassVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.List;
@Service
public class AdminService {

	@Autowired 
	IAdminDao admindao;
	public AdminVO adminloginCheck(String adminid) {
		return admindao.adminloginCheck(adminid);
	}
	public void logout(HttpSession session) {
		session.invalidate();
	}
	public void adminregister(AdminVO adminVO) {
		admindao.adminregister(adminVO);
	}
	public List<ClassAllVO> getClassAll() {
		// TODO Auto-generated method stub
		return admindao.getClassAll();
	}
	public void addStudyPlan(Timestamp timestamp, int choiceArr, int week, int classId, String title, String bookName, String className) {
		admindao.addStudyPlan(timestamp,choiceArr,week,classId,title,bookName,className);
		
	}
	public List<Student_ClassVO> studentClassList() {
		return admindao.studentClassList();
		
	}
	public List<ClassPlanningVO> PlanningList() {
		// TODO Auto-generated method stub
		return admindao.PlanningList();
	}
	public List<Student_ClassVO> getStudentClassAll() {
		// TODO Auto-generated method stub
		return admindao.getStudentClassAll();
	}
	public List<DepartmentVO> departmentList() {
		// TODO Auto-generated method stub
		return admindao.departmentList();
	}
	public void updateDept(int id, String string) {
		admindao.updateDept(id,string);
		
	}
	public List<StudentClassListVO> studentDaily(int id) {
		// TODO Auto-generated method stub
		return admindao.studentDaily(id);
	}
	public List<Student_ClassVO> student_classList() {
		// TODO Auto-generated method stub
		return admindao.student_classList();
	}
	public List<StudentWordClassVO> wordClassList() {
		// TODO Auto-generated method stub
		return admindao.wordClassList();
	}
	public void insertDeptList(String string) {
		admindao.insertDeptList(string);
		
	}
	public void deleteDeptList(int id) {
		admindao.deleteDeptList(id);
		
	}
	public void insertClassList(String string) {
		admindao.insertClassList(string);
		
	}
	public void deleteClassList(int id) {
		admindao.deleteClassList(id);
		
	}
}


