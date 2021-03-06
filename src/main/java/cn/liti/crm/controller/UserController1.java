//package cn.liti.crm.controller;
//import java.io.File;
//import java.io.IOException;
//import java.util.Map;
//
//import javax.annotation.Resource;
//import javax.servlet.http.HttpServletRequest;
//
//import org.apache.commons.io.FileUtils;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
//import org.springframework.stereotype.Controller;  
//import org.springframework.ui.Model;  
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;  
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.multipart.MultipartFile;
//
//import cn.liti.crm.model.auto.User;
//import cn.liti.crm.model.auto.demo;
//import cn.liti.crm.service.UserService;
//import cn.liti.crm.service.demoService;
//
//  
//  
//@Controller  
//@RequestMapping("/user")  
//// /user/**
//public class UserController1 {  
//    private static Logger log=LoggerFactory.getLogger(UserController1.class);
//     @Resource  
//    private UserService UserService;
//     @Resource  
//    private demoService demoService;
//    // /user/test?id=1
//    @RequestMapping(value="/test",method=RequestMethod.GET)  
//    public String test(HttpServletRequest request,Model model){  
//        int userId = Integer.parseInt(request.getParameter("id"));  
//        System.out.println("userId:"+userId);
//        User user=null;
//        if (userId==1) {
//             user = new User();  
//             user.setId(1);
//             user.setPassword("123");
//             user.setUserName("javen");
//        }
//       
//        log.debug(user.toString());
//        model.addAttribute("user", user);  
//        return "error";  
//    }  
//    
//    
//    // /user/showUser?id=1
//    @RequestMapping(value="/showUser",method=RequestMethod.GET)  
//    public String toIndex(HttpServletRequest request,Model model){  
//        int userId = Integer.parseInt(request.getParameter("id"));  
//        System.out.println("userId:"+userId);
//        User user = this.UserService.getUserById(userId);  
//        log.debug(user.toString());
//        model.addAttribute("user", user);  
//        return "showUser";  
//    }  
//    
// // /user/showUser2?id=1
//    @RequestMapping(value="/showUser2",method=RequestMethod.GET)  
//    public String toIndex2(@RequestParam("id") String id,Model model){  
//        int userId = Integer.parseInt(id);  
//        System.out.println("userId:"+userId);
//        User user = this.UserService.getUserById(userId);  
//        log.debug(user.toString());
//        model.addAttribute("user", user);  
//        return "showUser";  
//    }  
//    
//    
//    // /user/showUser3/{id}
//    @RequestMapping(value="/showUser3/{id}",method=RequestMethod.GET)  
//    public String toIndex3(@PathVariable("id")String id,Map<String, Object> model){  
//        int userId = Integer.parseInt(id);  
//        System.out.println("userId:"+userId);
//        User user = this.UserService.getUserById(userId);  
//        log.debug(user.toString());
//        model.put("user", user);  
//        return "showUser";  
//    }  
//    
// // /user/{id}
//    @RequestMapping(value="/{id}",method=RequestMethod.GET)  
//    public @ResponseBody User getUserInJson(@PathVariable String id,Map<String, Object> model){  
//        int userId = Integer.parseInt(id);  
//        System.out.println("userId:"+userId);
//        User user = this.UserService.getUserById(userId);  
//        log.info(user.toString());
//        return user;  
//    }  
//    
//    // /user/{id}
//    @RequestMapping(value="/jsontype/{id}",method=RequestMethod.GET)  
//    public ResponseEntity<User>  getUserInJson2(@PathVariable String id,Map<String, Object> model){  
//        int userId = Integer.parseInt(id);  
//        System.out.println("userId:"+userId);
//        User user = this.UserService.getUserById(userId);  
//        log.info(user.toString());
//        return new ResponseEntity<User>(user,HttpStatus.OK);  
//    } 
//    
//    //文件上传、
//    @RequestMapping(value="/upload")
//    public String showUploadPage(){
//        return "/file";
//    }
//    
//    @RequestMapping(value="/doUpload",method=RequestMethod.POST)
//    public String doUploadFile(@RequestParam("file")MultipartFile file) throws IOException{
//        if (!file.isEmpty()) {
//            log.info("Process file:{}",file.getOriginalFilename());
//        }
//        FileUtils.copyInputStreamToFile(file.getInputStream(), new File("E:\\",System.currentTimeMillis()+file.getOriginalFilename()));
//        return "succes";
//    }
//    @RequestMapping(value="/findAllUser",method=RequestMethod.POST)
//    public String findAllUser(HttpServletRequest request,Model model) {
//       System.out.println("进来了model:"+model);
//       String username1 = request.getParameter("username1");
//       String password1 = request.getParameter("password1");
//       System.out.println("username为:"+username1+"password为:"+password1);
//       int controllercount = demoService.findCount(username1,password1);
//       System.out.println("controllercount:"+controllercount);
//        return "succes";
//    }
//}