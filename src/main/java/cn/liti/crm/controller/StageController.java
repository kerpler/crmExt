package cn.liti.crm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.liti.crm.model.auto.DetailedStage;
import cn.liti.crm.model.auto.InConstruction;
import cn.liti.crm.model.auto.stageprocess;
import cn.liti.crm.service.InConstructionService;
import cn.liti.crm.service.StageService;
@Controller  
@RequestMapping("/stageController") 
public class StageController {
    @Autowired
    private StageService stageService;
    /**
     * 添加
     * @param request
     * @param model
     * @param stageprocess
     */
    @RequestMapping("/addStage")
    @ResponseBody
    public void addStage(HttpServletRequest request,Model model,stageprocess stageprocess){
        
        System.out.println("controller进来了");
        //Integer code = stageprocess.getCode();
        Integer days = stageprocess.getDays();
        String stagename = stageprocess.getStageprocessname();
       // System.out.println(code);
        System.out.println(stagename);
        System.out.println(days);
        stageService.addStage(stagename,days);
    }
    /**
     * 查询
     * @param request
     * @param model
     * @param stageprocess
     * @return
     */
    @RequestMapping("/findStage")
    @ResponseBody
    public List<stageprocess> findStage(HttpServletRequest request,Model model,stageprocess stageprocess){
        List<stageprocess> stage = stageService.findStage();
        System.out.println("controller  findStage进来了");
        System.out.println(stage);
        return stage;
    }
    
    /**
     * 根据id查询
     * @param request
     * @param model
     * @param stageprocess
     * @return 
     * @return
     */
    @RequestMapping("/findStageById")
    @ResponseBody
    public List<DetailedStage> findStageById(HttpServletRequest request,Model model,stageprocess stageprocess){
        System.out.println("根据id查询");
       String id = request.getParameter("id");
     List<DetailedStage> findStageById = stageService.findStageById(id);
     System.out.println(findStageById);
    return findStageById;
    }
    
    /**
     * 删除
     * @param request
     * @param model
     * @param stageprocess
     */
    @RequestMapping("/deleteStage")
    @ResponseBody
    public void deleteStage(HttpServletRequest request,Model model,stageprocess stageprocess){
        System.err.println("delete进来了");
        String stageprocessid = stageprocess.getStageprocessid();
        stageService.deleteStage(stageprocessid);
//        String code = request.getParameter("code1");
        System.out.println(stageprocessid);
    }
    /**
     * 编辑
     * @param request
     * @param model
     * @param stageprocess
     */
    @RequestMapping("/editStage")
    @ResponseBody
    public void editStage(HttpServletRequest request,Model model,stageprocess stageprocess){
        System.err.println("delete进来了");
        String stageprocessid = stageprocess.getStageprocessid();
        String stageprocessname = stageprocess.getStageprocessname();
        Integer days = stageprocess.getDays();
        stageService.editStage(stageprocessid,stageprocessname,days);
    }
}
