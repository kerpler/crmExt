package cn.liti.crm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.liti.crm.model.auto.Construction;
import cn.liti.crm.model.auto.InConstruction;
import cn.liti.crm.service.ConstructionService;

@Controller  
@RequestMapping("/crmConstruction")  
public class ConstructionController{
    @Autowired
    private ConstructionService constructionService;
    @RequestMapping("/findConstruction")
    @ResponseBody
    public List<Construction> findConstruction(HttpServletRequest request,Model model){
        System.out.println("controller进来了");
        List<Construction> construction = constructionService.findConstruction();
        System.out.println(construction);
        return construction;
    }
}