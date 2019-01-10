package cn.liti.crm.dao.auto;

import java.util.List;

import cn.liti.crm.model.auto.Item;

public interface ItemMapper {
    int deleteByPrimaryKey(String id);

    int insert(Item record);

    int insertSelective(Item record);

    Item selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Item record);
    
    List<Item> GetItem();

}