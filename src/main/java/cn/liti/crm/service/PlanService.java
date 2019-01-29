package cn.liti.crm.service;

import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSONArray;

import cn.liti.crm.model.auto.Plan;

public interface PlanService {
	List<Plan> GetItem();
	List<Plan> QueryItem(Map map);
	void AddItem(Plan plan); 
	Plan EditItem(String id);
	void UpdateItem(Plan plan);
	void DeleteItem(JSONArray id);
}
