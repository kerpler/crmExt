package cn.liti.crm.controller;

import java.math.BigDecimal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.liti.crm.model.auto.DetailedStage;
import cn.liti.crm.service.DetailedStageService;

@Controller  
@RequestMapping("/detailedStageController") 
public class DetailedStageController {
    @Autowired
    DetailedStageService detailedStageService;
    /**
     * 添加
     * @param request
     * @param model
     * @param stageprocess
     */
    @RequestMapping("/addDetailedStage")
    @ResponseBody
    public void addDetailedStage(HttpServletRequest request,Model model,DetailedStage detailedStage){
        
        System.out.println("流程阶段controller进来了");
        String detailedprocessid = detailedStage.getDetailedprocessid();
        Integer detailedcode = detailedStage.getDetailedcode();
        Integer detaileddays = detailedStage.getDetaileddays();
        String detailedstagename = detailedStage.getDetailedstagename();
        System.out.println(detailedprocessid);
        System.out.println(detailedcode);
        System.out.println(detailedstagename);
        System.out.println(detaileddays);
        detailedStageService.addDetailedStage(detailedprocessid,detailedcode,detailedstagename,detaileddays);
        /*
        stageService.addStage(code,stagename,days);*/
    }
    /**
     * 更新
     * @param request
     * @param model
     * @param detailedStage
     */
    @RequestMapping("/updateDetailedStage")
    @ResponseBody
    public void updateDetailedStage(HttpServletRequest request,Model model,DetailedStage detailedStage){
        
        System.out.println("流程阶段controller进来了");
        String detailedstageid = detailedStage.getDetailedstageid();
        Integer detaileddays = detailedStage.getDetaileddays();
        String detailedstagename = detailedStage.getDetailedstagename();
        System.out.println(detailedstageid);
        System.out.println(detailedstagename);
        System.out.println(detaileddays);
        detailedStageService.updateDetailedStage(detailedstageid,detailedstagename,detaileddays);
    }
    
    /**
     * 更新
     * @param request
     * @param model
     * @param detailedStage
     */
    @RequestMapping("/delDetailedStage")
    @ResponseBody
    public void delDetailedStage(HttpServletRequest request,Model model,DetailedStage detailedStage){
        
        System.out.println("流程阶段controller进来了");
        String detailedstageid = detailedStage.getDetailedstageid();
        System.out.println(detailedstageid);
        detailedStageService.delDetailedStage(detailedstageid);
    }
    
}
