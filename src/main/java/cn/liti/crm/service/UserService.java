package cn.liti.crm.service;  

import cn.liti.crm.model.auto.User;

  
  
public interface UserService {  
    public User getUserById(int userId);

    public int findCount(String username, String password);  
}