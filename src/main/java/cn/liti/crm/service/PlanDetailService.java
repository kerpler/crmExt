package cn.liti.crm.service;

import java.util.List;

import cn.liti.crm.model.auto.PlanDetail;
import cn.liti.crm.model.auto.PlanDetailView;

public interface PlanDetailService {
	List<PlanDetail> FindDetail();
	
	List<PlanDetailView> FindCno(String cno);
}
