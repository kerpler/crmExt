package cn.liti.crm.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.liti.crm.model.auto.Construction;
import cn.liti.crm.service.ConstructionService;
import cn.liti.crm.dao.auto.ConstructionMapper;
@Service
public class ConstructionServiceImpl implements ConstructionService {
    @Autowired
    private ConstructionMapper ConstructionMapper;
    @Override
    public List<Construction> findConstruction() {
        return   ConstructionMapper.findConstruction();
    }
}
