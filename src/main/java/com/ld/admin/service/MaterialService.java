package com.ld.admin.service;

import com.ld.admin.dao.IMaterialDao;
import com.ld.admin.vo.MaterialVO;
import com.ld.user.vo.Criteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MaterialService {
@Autowired
private IMaterialDao materialDao;
	public List<MaterialVO> materiallist(Criteria cr) {
		return materialDao.materiallist(cr);
	}

	public void materialInsert(MaterialVO materialVO) {
		materialDao.materialInsert(materialVO);
		
	}

	public MaterialVO materialread(int material_seq) {
		return materialDao.materialread(material_seq);
	}

}
