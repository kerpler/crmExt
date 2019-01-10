package cn.liti.crm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.liti.crm.model.auto.Item;
import cn.liti.crm.service.ItemService;

@Controller  
@RequestMapping("/Item")
public class ItemController {
	@Autowired
	private ItemService itemService;
	@RequestMapping("/GetItem")
    @ResponseBody
	public List<Item> GetItem(HttpServletRequest request, Model model) {
			List<Item> itemlist = itemService.GetItem();
//			System.out.println(itemlist);
		return itemlist;
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
	@RequestMapping(value="/DeleteItem",method=RequestMethod.POST)
	@ResponseBody
	public void DeleteItem(HttpServletRequest request, Model model, Item item) {
//		itemService.AddItem(item);
//		System.out.println(item.getId());
//		return itemService.EditItem(item.getId());
		itemService.DeleteItem(item.getId());
	}
}
