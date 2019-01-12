package cn.liti.crm.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;

import cn.liti.crm.model.auto.Item;
import cn.liti.crm.service.ItemService;

@Controller  
@RequestMapping("/Item")
public class ItemController {
	@Autowired
	private ItemService itemService;
	@RequestMapping("/GetItem")
    @ResponseBody
	public List<Item> GetItem(HttpServletRequest request, Model model,@RequestBody Map<String,String> map) {
		int i = 0;
		for (String v: map.values()) {
			if(!v.equals(null) && v != null && !v.equals("")){
				i++;
			}
		}
		if (i == 0) {
			// 不带查询参数，返回清单
			List<Item> itemlist = itemService.GetItem();
			return itemlist;
		} else {
			// 带查询参数，返回清单
			List<Item> itemlist = itemService.QueryItem(map);
			return itemlist;
		}
//			System.out.println(itemlist);
		
	}
	
	@RequestMapping(value="/AddItem",method=RequestMethod.POST)
	@ResponseBody
	public void AddItem(HttpServletRequest request, Model model, Item item) {
		itemService.AddItem(item);
//		System.out.println(item);
	}
	
	@RequestMapping(value="/EditItem",method=RequestMethod.POST)
	@ResponseBody
	public void EditItem(HttpServletRequest request, Model model, Item item) {
//		itemService.AddItem(item);
//		System.out.println(item.getId());
//		return itemService.EditItem(item.getId());
		itemService.UpdateItem(item);
	}
	@RequestMapping("/DeleteItem")
	@ResponseBody
	public void DeleteItem(@RequestParam String ids) {
		JSONArray id = JSONArray.parseArray(ids);
		itemService.DeleteItem(id);
	}
}
