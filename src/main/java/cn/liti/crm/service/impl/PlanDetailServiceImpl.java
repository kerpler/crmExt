package cn.liti.crm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.liti.crm.dao.auto.PlanDetailMapper;
import cn.liti.crm.model.auto.PlanDetail;
import cn.liti.crm.service.PlanDetailService;

@Service
public class PlanDetailServiceImpl implements PlanDetailService {
	@Autowired
	private PlanDetailMapper pdMappar;
	
	@Override
	public List<PlanDetail> FindDetail() {
		// TODO Auto-generated method stub
		return pdMappar.FindDetail();
	}
	
}
