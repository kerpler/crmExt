package cn.liti.crm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;

import cn.liti.crm.model.auto.InConstruction;
import cn.liti.crm.service.InConstructionService;

@Controller  
@RequestMapping("/crmConstruction")  
public class InconstructionController{
    @Autowired
    private InConstructionService inConstructionService;
    @RequestMapping("/findConstruction")
    @ResponseBody
    public List<InConstruction> findConstruction(HttpServletRequest request,Model model){
        
        System.out.println("controller进来了");
        List<InConstruction> inConstruction = inConstructionService.findConstruction();
        System.out.println(inConstruction);
        return inConstruction;
    }
}
