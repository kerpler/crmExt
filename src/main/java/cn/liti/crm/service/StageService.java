package cn.liti.crm.service;

import java.util.List;

import cn.liti.crm.model.auto.stageprocess;

public interface StageService {
   
    void addStage(int code, String stagename, int days);

    List<stageprocess> findStage();

    void deleteStage(Integer code);
}
