package cn.liti.crm.service.impl;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;  

import org.springframework.stereotype.Service;  

import cn.liti.crm.model.auto.zyUser;
import cn.liti.crm.service.UserService;
import cn.liti.crm.dao.auto.zyUserMapper;
  
@Service("userService")  
public class UserServiceImpl implements UserService {  
    @Resource  
    private zyUserMapper zyUserMapper;
	@Override
	public List<zyUser> getUserList() {
		// TODO Auto-generated method stub
		System.out.println("进入Mapper");
		return (List<zyUser>) zyUserMapper.selectAll();
	}
	@Override
	public void addUser(zyUser zyuser) {
		// TODO Auto-generated method stub
		String uid = UUID.randomUUID().toString().replaceAll("-", "");
        zyuser.setUserid(uid);
        zyUserMapper.insertSelective(zyuser);
		
	}  
  
}