package cn.liti.crm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.liti.crm.dao.auto.stageprocessMapper;
import cn.liti.crm.model.auto.stageprocess;
import cn.liti.crm.service.StageService;
@Service
public class StageServiceimpl implements StageService {
    @Autowired
    stageprocessMapper stageprocessmapper;
    @Override 
    public void addStage(int code, String stagename, int days) {
        System.out.println("SERVICE:"+code);
        stageprocessmapper.addStage(code,stagename,days);
        
    }
    @Override
    public List<stageprocess> findStage() {
     List<stageprocess> stageprocess = stageprocessmapper.findStage();
     System.out.println(stageprocess);
       return  stageprocess;
    }
    @Override
    public void deleteStage(Integer code) {
        stageprocessmapper.deleteStage(code);
        
    }

}
