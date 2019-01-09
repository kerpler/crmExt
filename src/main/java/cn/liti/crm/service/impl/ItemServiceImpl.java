package cn.liti.crm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	
}
