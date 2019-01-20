package cn.liti.crm.dao.auto;

import java.util.List;

import cn.liti.crm.model.auto.PlanDetail;

public interface PlanDetailMapper {
    int deleteByPrimaryKey(String pdetailid);

    int insert(PlanDetail record);

    int insertSelective(PlanDetail record);

    PlanDetail selectByPrimaryKey(String pdetailid);

    int updateByPrimaryKeySelective(PlanDetail record);

    int updateByPrimaryKey(PlanDetail record);

	List<PlanDetail> FindDetail();

}