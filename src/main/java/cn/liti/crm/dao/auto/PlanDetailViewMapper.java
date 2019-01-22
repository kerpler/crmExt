package cn.liti.crm.dao.auto;

import java.util.List;

import cn.liti.crm.model.auto.PlanDetailView;

public interface PlanDetailViewMapper {
    int insert(PlanDetailView record);

    int insertSelective(PlanDetailView record);
    
    List<PlanDetailView> selectcno(String cno);
}