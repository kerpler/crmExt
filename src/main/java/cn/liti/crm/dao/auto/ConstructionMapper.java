package cn.liti.crm.dao.auto;

import java.util.List;
import java.util.Map;

import cn.liti.crm.model.auto.Construction;

public interface ConstructionMapper {
    int insert(Construction record);

    int insertSelective(Construction record);

    List<Construction> findConstruction();
    
}