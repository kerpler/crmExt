package cn.liti.crm.dao.auto;

import cn.liti.crm.model.auto.InConstruction;
import cn.liti.crm.model.auto.customers;

public interface customersMapper {
    int deleteByPrimaryKey(String customersid);

    int insert(customers record);

    int insertSelective(customers record);

    customers selectByPrimaryKey(String customersid);

    int updateByPrimaryKeySelective(customers record);

    int updateByPrimaryKey(customers record);

    InConstruction findConstruction();
}