package cn.liti.crm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.liti.crm.model.auto.InConstruction;
import cn.liti.crm.service.InConstructionService;
import cn.liti.crm.service.addStageService;

@Controller  
@RequestMapping("/add") 
public class addStageController {
    @Autowired
    private addStageService addStageService;
    @RequestMapping("/addStage")
    @ResponseBody
    public void addStage(HttpServletRequest request,Model model){
        
        System.out.println("controller进来了");
//        String username = request.getParameter("username");code
//        String nickname = request.getParameter("nickname");stagename
//        String password = request.getParameter("password");days
       // addStageService.addStage(stagename,stagenote);
         String code1 = request.getParameter("code");
         String stagename = request.getParameter("stagename");
         String days1 = request.getParameter("days");
         int code = Integer.parseInt(code1);
         int days = Integer.parseInt(days1);
         addStageService.addStage(code,stagename,days);
        System.out.println(code);
        System.out.println(stagename);
        System.out.println(days);
    }
}
