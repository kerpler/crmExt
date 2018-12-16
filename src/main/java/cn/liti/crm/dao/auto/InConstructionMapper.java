package cn.liti.crm.dao.auto;

import java.util.List;

import cn.liti.crm.model.auto.InConstruction;

public interface InConstructionMapper {
    int insert(InConstruction record);

    int insertSelective(InConstruction record);

   List<InConstruction> findConstruction();
}