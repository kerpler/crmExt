package cn.liti.crm.service;

import java.util.List;

import cn.liti.crm.model.auto.DetailedStage;
import cn.liti.crm.model.auto.stageprocess;

public interface StageService {
   
    void addStage(String stagename, int days);

    List<stageprocess> findStage();

    void deleteStage(String stageprocessid);

    void editStage(String stageprocessid, String stageprocessname, Integer days);

     List<DetailedStage> findStageById(String id);
}
