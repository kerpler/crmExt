package cn.liti.crm.service;  

import java.util.List;

import cn.liti.crm.model.auto.zyUser;
  
public interface UserService {  

	public List<zyUser> getUserList();

	public void addUser(zyUser zyuser);  
}