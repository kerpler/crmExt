package cn.liti.crm.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.liti.crm.model.auto.Construction;
import cn.liti.crm.service.ConstructionService;

@Controller  
@RequestMapping("/crmConstruction")  
public class ConstructionController{
    @Autowired
    private ConstructionService constructionService;
    @RequestMapping("/findConstruction")
    @ResponseBody
    public List<Construction> findConstruction(HttpServletRequest request, Model model){
        List<Construction> construction = constructionService.findConstruction();
    	return construction; 
    }
    
    @RequestMapping("/findPageCon")
    @ResponseBody
    public PageInfo findPageCon(HttpServletRequest request, Model model, @RequestBody Map map){
    	// 前台传递页数，和条数，确定查询数据
    	PageHelper.startPage((int) map.get("pageNumber"), (int) map.get("pageSize"));
    	// 查询数据
    	List<Construction> con = constructionService.findConstruction();
    	// 分页，限制前后连续5页
    	PageInfo pageInfo = new PageInfo(con,5);
    	return pageInfo;
    }
   
}