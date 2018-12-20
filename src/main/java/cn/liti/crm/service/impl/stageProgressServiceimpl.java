package cn.liti.crm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.liti.crm.dao.auto.RecordMapper;
import cn.liti.crm.service.stageProgressService;
@Service
public class stageProgressServiceimpl implements stageProgressService {
    @Autowired
    RecordMapper RecordMapper;
    @Override 
    public void stageProgress() {
        
    }

}
