package cn.liti.crm.dao.auto;

import java.util.List;
import java.util.Map;

import cn.liti.crm.model.auto.Plan;

public interface PlanMapper {
    int deleteByPrimaryKey(String planid);

    int insert(Plan record);

    int insertSelective(Plan record);

    Plan selectByPrimaryKey(String planid);

    int updateByPrimaryKeySelective(Plan record);

    int updateByPrimaryKey(Plan record);
    
    List<Plan> GetItem();

	List<Plan> queryItem(Map map);
}