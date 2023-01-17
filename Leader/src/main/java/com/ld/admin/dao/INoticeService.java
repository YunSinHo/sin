package com.ld.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ld.admin.vo.NoticeVO;
import com.ld.user.vo.Criteria;

@Mapper
public interface INoticeService {

	List<NoticeVO> noticelist(Criteria cr);

	void noticeInsert(NoticeVO noticeVO);

	NoticeVO noticeread(int notice_seq);

}
