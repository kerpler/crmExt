package cn.liti.crm.service;

import java.util.List;

import cn.liti.crm.model.auto.Item;
import cn.liti.crm.model.auto.zyUser;

public interface ItemService {
	List<Item> GetItem();
	void AddItem(Item item); 
	Item EditItem(String id);
	void UpdateItem(Item item);
}
