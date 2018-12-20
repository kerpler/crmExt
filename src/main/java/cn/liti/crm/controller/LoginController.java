package cn.liti.crm.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import cn.liti.crm.model.auto.zyUser;
import cn.liti.crm.dao.auto.zyUserMapper;

@Controller
public class LoginController {
    
    @Autowired
    private zyUserMapper zyUserMapper;
    
    /**
     * 访问时跳转登录页面
     * @param model
     * @return
     */
    @RequestMapping(value="/",method=RequestMethod.GET)
    public String index(Model model){
        model.addAttribute("msg", "");
        return "login";
    }
    
    @RequestMapping(value="/login")
    public String login(Model model, // 向前台页面传的值放入model中
            HttpServletRequest request // 从前台页面取得的值
            ){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean flag = LoginCheck(username, password);
        if(flag){
            return "userList";
        }else{
            model.addAttribute("msg", "用户名或密码不正确，请重新登录");
            return "login";
        }
    }
    
    /**
     * 检查用户名密码是否正确
     * @param username
     * @param password
     * @return
     */
    private boolean LoginCheck(String username,String password){
        zyUser zyUser = zyUserMapper.selectByUsername(username);
        if(zyUser == null || "".equals(zyUser)){
            return false;
        }
        if(zyUser.getUserpwd().equals(password)){
            return true;
        }else{
            return false;
        }
    }
}