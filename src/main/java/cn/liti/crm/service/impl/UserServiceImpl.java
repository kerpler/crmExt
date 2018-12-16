package cn.liti.crm.service.impl;
import javax.annotation.Resource;  

import org.springframework.stereotype.Service;  

import cn.liti.crm.model.auto.User;
import cn.liti.crm.service.UserService;
import cn.liti.crm.dao.auto.UserMapper; 
  
@Service("userService")  
public class UserServiceImpl implements UserService {  
    @Resource  
    private UserMapper UserMapper;
    public User getUserById(int userId) {  
        // TODO Auto-generated method stub  
        return this.UserMapper.selectByPrimaryKey(userId);  
    }
    @Override
    public int findCount(String username, String password) {
        System.out.println("service:"+username+":"+password);
        System.out.println("service进来了");
        return 0;
    }  
  
}