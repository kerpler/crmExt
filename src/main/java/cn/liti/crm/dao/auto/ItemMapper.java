package cn.liti.crm.dao.auto;

import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSONArray;

import cn.liti.crm.model.auto.Item;

public interface ItemMapper {
    int deleteByPrimaryKey(String ids);

    int insert(Item record);

    int insertSelective(Item record);

    Item selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Item record);
    
    List<Item> GetItem();

	List<Item> queryItem(Map map);

}