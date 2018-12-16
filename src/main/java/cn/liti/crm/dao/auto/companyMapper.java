package cn.liti.crm.dao.auto;

import cn.liti.crm.model.auto.company;


public interface companyMapper {
    int deleteByPrimaryKey(String cyid);

    int insert(company record);

    int insertSelective(company record);

    company selectByPrimaryKey(String cyid);

    int updateByPrimaryKeySelective(company record);

    int updateByPrimaryKey(company record);
}