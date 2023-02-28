package com.ld.admin.service;

import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ld.admin.dao.IAdminDao;
import com.ld.admin.vo.AdminVO;
import com.ld.admin.vo.ClassPlanningVO;
import com.ld.admin.vo.Student_ClassVO;
import com.ld.user.vo.ClassAllVO;
import com.ld.user.vo.StudentClassVO;
import com.ld.user.vo.TeacherVO;
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
}


