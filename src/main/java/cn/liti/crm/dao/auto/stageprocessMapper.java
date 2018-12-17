package cn.liti.crm.dao.auto;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.liti.crm.model.auto.stageprocess;

public interface stageprocessMapper {
    int insert(stageprocess record);

    int insertSelective(stageprocess record);
    
    void addStage(@Param("code")int code, @Param("stagename")String stagename, @Param("days")int days);

    List<stageprocess> findStage();

    void deleteStage(Integer code);
}