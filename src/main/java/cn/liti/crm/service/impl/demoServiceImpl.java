package cn.liti.crm.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.liti.crm.dao.auto.demoMapper;
import cn.liti.crm.service.demoService;
@Service("demoService")  
public class demoServiceImpl implements demoService {
    @Resource  
    private demoMapper demoMapper;
    @Override
    public int findCount(String username1, String password1) {
        System.out.println("service:"+username1+":"+password1);
        String demoid = "2";
//       int count =  demoMapper.insert(demoid,username1,password1);
        return demoMapper.findCount(username1,password1);
//       count;
    }

}
