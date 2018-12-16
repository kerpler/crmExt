package cn.liti.crm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.liti.crm.dao.auto.stageprocessMapper;
import cn.liti.crm.service.addStageService;
@Service
public class addStageServiceimpl implements addStageService {
    @Autowired
    stageprocessMapper stageprocessmapper;
    @Override 
    public void addStage(int code, String stagename, int days) {
        System.out.println("SERVICE:"+code);
        stageprocessmapper.addStage(code,stagename,days);
        
    }

}
