package cn.liti.crm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.liti.crm.service.stageProgressService;

@Controller  
@RequestMapping("/stage")
public class stageProgressController {
    @Autowired
    private stageProgressService stageProgressService;
    
    @RequestMapping(value="/self",method=RequestMethod.GET)
    public String stageProgress(HttpServletRequest request,Model model){
    	return "projectGant";
    }
}
