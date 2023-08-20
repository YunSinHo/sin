package com.ld.admin.service;

import com.ld.admin.dao.ILectureDao;
import com.ld.admin.vo.LectureVO;
import com.ld.user.vo.Criteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LectureService {

	@Autowired
	private ILectureDao lectureDao;
	public void lectureinsert(LectureVO lectureVO) {
		lectureDao.lectureinsert(lectureVO);
		
	}
	public List<LectureVO> lecturelist(Criteria cr) {
		return lectureDao.lecturelist( cr);
	}
	public LectureVO lectureread(int lecture_seq) {
		// TODO Auto-generated method stub
		return lectureDao.lectureread( lecture_seq);
	}

}
