package cn.liti.crm.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONArray;

import cn.liti.crm.dao.auto.ItemMapper;
import cn.liti.crm.model.auto.Item;
import cn.liti.crm.service.ItemService;

@Service
public class ItemServiceImpl implements ItemService {
	@Autowired
	private ItemMapper ItemMappar;
	@Override
	public List<Item> GetItem() {
		// TODO Auto-generated method stub
		List<Item> item = ItemMappar.GetItem();
		return item;
	}
	
	@Override
	public void AddItem(Item item) {
		// TODO Auto-generated method stub
		ItemMappar.insert(item);
	}
	
	@Override
	public Item EditItem(String id) {
		// TODO Auto-generated method stub
		return ItemMappar.selectByPrimaryKey(id);
	}

	@Override
	public void UpdateItem(Item item) {
		// TODO Auto-generated method stub
		ItemMappar.updateByPrimaryKeySelective(item);
		System.out.println(ItemMappar.updateByPrimaryKeySelective(item));
	}
	
	@Override
	public void DeleteItem(JSONArray id) {
		// TODO Auto-generated method stub
		for (int i = 0; i < id.size(); i++) {
			String ids = (String) id.get(i);
			System.out.println(ids);
			ItemMappar.deleteByPrimaryKey(ids);
		}
	}

	@Override
	public List<Item> QueryItem(Map map) {
		// TODO Auto-generated method stub
//		System.out.println("Impl:"+map);
		List<Item> item = ItemMappar.queryItem(map);
		return item;
	}
	
}
