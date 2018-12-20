package cn.liti.crm.dao.auto;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.liti.crm.model.auto.DetailedStage;
import cn.liti.crm.model.auto.stageprocess;

public interface stageprocessMapper {
    int insert(stageprocess record);

    int insertSelective(stageprocess record);
    
    void addStage(@Param("stagename")String stagename, @Param("days")int days);

    List<stageprocess> findStage();

    void deleteStage(String stageprocessid);

    void editStage(@Param("stageprocessid")String stageprocessid, @Param("stagename")String stageprocessname, @Param("days")Integer days);

    List<DetailedStage> findStageById(String id);
}