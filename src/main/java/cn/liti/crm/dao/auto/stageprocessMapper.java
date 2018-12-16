package cn.liti.crm.dao.auto;

import org.apache.ibatis.annotations.Param;

import cn.liti.crm.model.auto.stageprocess;

public interface stageprocessMapper {
    int insert(stageprocess record);

    int insertSelective(stageprocess record);
    
    void addStage(@Param("code")int code, @Param("stagename")String stagename, @Param("days")int days);
}