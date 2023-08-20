package com.ld.admin.dao;

import com.ld.admin.vo.LectureVO;
import com.ld.user.vo.Criteria;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ILectureDao {

	 public void lectureinsert(LectureVO lectureVO);

	public List<LectureVO> lecturelist(Criteria cr);

	public LectureVO lectureread(int lecture_seq);

}
