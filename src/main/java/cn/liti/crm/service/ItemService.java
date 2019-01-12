package cn.liti.crm.service;

import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSONArray;

import cn.liti.crm.model.auto.Item;
import cn.liti.crm.model.auto.zyUser;

public interface ItemService {
	List<Item> GetItem();
	List<Item> QueryItem(Map map);
	void AddItem(Item item); 
	Item EditItem(String id);
	void UpdateItem(Item item);
	void DeleteItem(JSONArray id);
}
