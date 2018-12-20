package cn.liti.crm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.liti.crm.dao.auto.stageprocessMapper;
import cn.liti.crm.model.auto.DetailedStage;
import cn.liti.crm.model.auto.stageprocess;
import cn.liti.crm.service.StageService;
@Service
public class StageServiceimpl implements StageService {
    @Autowired
    stageprocessMapper stageprocessmapper;
    @Override 
    public void addStage(String stagename, int days) {
        stageprocessmapper.addStage(stagename,days);
        
    }
    @Override
    public List<stageprocess> findStage() {
     List<stageprocess> stageprocess = stageprocessmapper.findStage();
     System.out.println(stageprocess);
       return  stageprocess;
    }
    @Override
    public void deleteStage(String stageprocessid) {
        stageprocessmapper.deleteStage(stageprocessid);
        
    }
    @Override
    public void editStage(String stageprocessid, String stageprocessname, Integer days) {
        // TODO Auto-generated method stub
        stageprocessmapper.editStage(stageprocessid,stageprocessname,days);
    }
    @Override
    public List<DetailedStage> findStageById(String id) {
        // TODO Auto-generated method stub
        return stageprocessmapper.findStageById(id);
    }

}
