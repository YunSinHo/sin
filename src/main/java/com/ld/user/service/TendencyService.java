package com.ld.user.service;

import com.ld.user.dao.ITendencyDao;
import com.ld.user.vo.Criteria;
import com.ld.user.vo.TendencyVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TendencyService {

    @Autowired
    private ITendencyDao tendencyDao;

    public void tendencyInsert(TendencyVO tendencyVO) {
        tendencyDao.tendencyInsert(tendencyVO);

    }

    public List<TendencyVO> tendencylist(Criteria criteria) {
        return tendencyDao.tendencylist(criteria);
    }

    public TendencyVO tendencyresult(int tendency_seq) {
        return tendencyDao.tendencyresult(tendency_seq);
    }

}
