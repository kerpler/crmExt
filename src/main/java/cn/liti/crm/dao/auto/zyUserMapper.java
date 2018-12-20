package cn.liti.crm.dao.auto;

import java.util.List;

import cn.liti.crm.model.auto.zyUser;

public interface zyUserMapper {
    int deleteByPrimaryKey(String userid);

    int insert(zyUser zyUser);

    int insertSelective(zyUser zyUser);

    zyUser selectByPrimaryKey(String userid);

    int updateByPrimaryKeySelective(zyUser zyUser);

    int updateByPrimaryKey(zyUser zyUser);

	zyUser selectByUsername(String username);
	
	List<zyUser> selectAll();
}