package com.ld.admin.dao;

import com.ld.admin.vo.NoticeVO;
import com.ld.user.vo.Criteria;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface INoticeService {

	List<NoticeVO> noticelist(Criteria cr);

	void noticeInsert(NoticeVO noticeVO);

	NoticeVO noticeread(int notice_seq);

}
