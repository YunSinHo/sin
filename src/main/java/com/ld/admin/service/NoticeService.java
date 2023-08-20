package com.ld.admin.service;

import com.ld.admin.dao.INoticeService;
import com.ld.admin.vo.NoticeVO;
import com.ld.user.vo.Criteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeService {

	@Autowired
	private INoticeService noticeService;
	public List<NoticeVO> noticelist(Criteria cr) {
		return noticeService.noticelist( cr);
	}

	public void noticeInsert(NoticeVO noticeVO) {
		noticeService.noticeInsert( noticeVO);
	}

	public NoticeVO noticeread(int notice_seq) {
		return noticeService.noticeread(notice_seq) ;
	}

}
