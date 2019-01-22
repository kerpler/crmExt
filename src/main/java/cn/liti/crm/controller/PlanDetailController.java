package cn.liti.crm.controller;

import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;




import cn.liti.crm.model.auto.PlanDetail;
import cn.liti.crm.model.auto.PlanDetailView;
import cn.liti.crm.service.PlanDetailService;

@Controller  
@RequestMapping("/Plan")
public class PlanDetailController {
	@Autowired
	private PlanDetailService pdService;
	
	@RequestMapping("/FindDetail")
    @ResponseBody
	public List<PlanDetail> FindDetail(HttpServletRequest request, Model model) {
		System.out.println("格式前的UUID ： " + UUID.randomUUID().toString().replaceAll("-", ""));
		List<PlanDetail> pdlist = pdService.FindDetail();
		return pdlist;
	}
	
	@RequestMapping("/PlanDetail")
    @ResponseBody
	public List<PlanDetailView> PlanDetail(HttpServletRequest request, Model model) {
		String cno = request.getParameter("customersno");
		List<PlanDetailView> pdvlist = pdService.FindCno(cno);
		return pdvlist;
	}
}
