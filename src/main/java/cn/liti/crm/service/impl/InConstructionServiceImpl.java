package cn.liti.crm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.liti.crm.model.auto.InConstruction;
import cn.liti.crm.service.InConstructionService;
import cn.liti.crm.dao.auto.InConstructionMapper;
import cn.liti.crm.dao.auto.customersMapper;
@Service
public class InConstructionServiceImpl implements InConstructionService {
    @Autowired
    private InConstructionMapper inConstructionMapper;
    @Autowired
    private customersMapper customersMapper;
    @Override
    public List<InConstruction> findConstruction() {
        System.out.println("service进来了");
        // TODO Auto-generated method stub
        List<InConstruction> inConstruction = inConstructionMapper.findConstruction();
        return inConstruction;
    }

}
