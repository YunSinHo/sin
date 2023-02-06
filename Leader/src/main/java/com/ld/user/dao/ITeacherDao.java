package com.ld.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ld.user.vo.TeacherVO;

@Mapper
public interface ITeacherDao {

	List<TeacherVO> teacherList();

	void insertTeacher(TeacherVO teacherVO2);

	TeacherVO loginTeacher(String id, String password);

	void approveJoinTeacher(int id);

	void quitTeacher(int id1);

	void rejoinTeacher(int id);

	List<TeacherVO> teacherStandByList();

	List<TeacherVO> teacherQuitList();

}
