package cn.liti.crm.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONArray;

import cn.liti.crm.dao.auto.PlanMapper;
import cn.liti.crm.model.auto.Plan;
import cn.liti.crm.service.PlanService;

@Service
public class PlanServiceImpl implements PlanService {
	@Autowired
	private PlanMapper PlanMappar;
	@Override
	public List<Plan> GetItem() {
		// TODO Auto-generated method stub
		List<Plan> plan = PlanMappar.GetItem();
		return plan;
	}
	
	@Override
	public void AddItem(Plan item) {
		// TODO Auto-generated method stub
		PlanMappar.insert(item);
	}
	
	@Override
	public Plan EditItem(String id) {
		// TODO Auto-generated method stub
		return PlanMappar.selectByPrimaryKey(id);
	}

	@Override
	public void UpdateItem(Plan plan) {
		// TODO Auto-generated method stub
		PlanMappar.updateByPrimaryKeySelective(plan);
		System.out.println(PlanMappar.updateByPrimaryKeySelective(plan));
	}
	
	@Override
	public void DeleteItem(JSONArray id) {
		// TODO Auto-generated method stub
		for (int i = 0; i < id.size(); i++) {
			String ids = (String) id.get(i);
			System.out.println(ids);
			PlanMappar.deleteByPrimaryKey(ids);
		}
	}

	@Override
	public List<Plan> QueryItem(Map map) {
		// TODO Auto-generated method stub
//		System.out.println("Impl:"+map);
		List<Plan> plan = PlanMappar.queryItem(map);
		return plan;
	}
	
}
