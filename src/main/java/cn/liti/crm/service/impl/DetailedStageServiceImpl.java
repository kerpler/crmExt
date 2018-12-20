package cn.liti.crm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.liti.crm.dao.auto.DetailedStageMapper;
import cn.liti.crm.service.DetailedStageService;
@Service
public class DetailedStageServiceImpl implements DetailedStageService {
    @Autowired
    DetailedStageMapper detailedStageMapper;

    @Override
    public void addDetailedStage(String detailedprocessid,
            Integer detailedcode, String detailedstagename, Integer detaileddays) {
        // TODO Auto-generated method stub
        detailedStageMapper.addDetailedStage(detailedprocessid, detailedcode, detailedstagename, detaileddays);
        System.out.println("servicejinlail");
    }

    @Override
    public void updateDetailedStage(String detailedstageid,
            String detailedstagename, Integer detaileddays) {
        // TODO Auto-generated method stub
        detailedStageMapper.updateDetailedStage(detailedstageid,detailedstagename,detaileddays);
    }

    @Override
    public void delDetailedStage(String detailedstageid) {
        // TODO Auto-generated method stub
        detailedStageMapper.delDetailedStage(detailedstageid);
    }
   
}
