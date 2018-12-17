package cn.liti.crm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.liti.crm.model.auto.InConstruction;
import cn.liti.crm.model.auto.stageprocess;
import cn.liti.crm.service.InConstructionService;
import cn.liti.crm.service.StageService;
@Controller  
@RequestMapping("/stageController") 
public class StageController {
    @Autowired
    private StageService stageService;
    @RequestMapping("/addStage")
    @ResponseBody
    public void addStage(HttpServletRequest request,Model model,stageprocess stageprocess){
        
        System.out.println("controller进来了");
        Integer code = stageprocess.getCode();
        Integer days = stageprocess.getDays();
        String stagename = stageprocess.getStageprocessname();
        System.out.println(code);
        System.out.println(stagename);
        System.out.println(days);
        stageService.addStage(code,stagename,days);
    }
    @RequestMapping("/findStage")
    @ResponseBody
    public List<stageprocess> findStage(HttpServletRequest request,Model model,stageprocess stageprocess){
        List<stageprocess> stage = stageService.findStage();
        System.out.println("controller  findStage进来了");
        System.out.println(stage);
        return stage;
    }
    @RequestMapping("/deleteStage")
    @ResponseBody
    public void deleteStage(HttpServletRequest request,Model model,stageprocess stageprocess){
        System.err.println("delete进来了");
        Integer code = stageprocess.getCode();
        stageService.deleteStage(code);
//        String code = request.getParameter("code1");
        System.out.println(code);
        System.out.println("删除方法进来了");
    }
}
