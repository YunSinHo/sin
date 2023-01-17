package com.ld.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ld.admin.vo.LectureVO;
import com.ld.user.vo.Criteria;

@Mapper
public interface ILectureDao {

	 public void lectureinsert(LectureVO lectureVO);

	public List<LectureVO> lecturelist(Criteria cr);

	public LectureVO lectureread(int lecture_seq);

}
