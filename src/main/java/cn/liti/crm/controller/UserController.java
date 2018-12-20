package cn.liti.crm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.liti.crm.model.auto.zyUser;
import cn.liti.crm.dao.auto.zyUserMapper;
import cn.liti.crm.service.UserService;
import cn.liti.crm.service.impl.Msg;
import cn.liti.crm.service.impl.UserServiceImpl;;

@Controller
public class UserController {
    
	 @Autowired
	 private UserService UserService;
    /**
     * 分页获取用户信息
     * @ResponseBody 需导入jackson包
     * @param pn
     * @return
     */
	 @RequestMapping(value="/user",method=RequestMethod.GET)
	 @ResponseBody
	 public PageInfo getUser(@RequestParam(value="pn",defaultValue="1")Integer pn){// 分页参数
	        /* 配置分页查询
	        ** 引入PageHelper分页插件，即pagehelper-5.1.2.jar和jsqlparser-0.9.1.jar
	        ** mybatis.xml中配置分页
	        ** 调用PageHelper.startPage(pageNum[第几页], pageSize[每页显示多少条数据]);
	        **/
	        PageHelper.startPage(pn, 10);
	        // startPage后紧跟的查询即为分页查询
	        System.out.println("开始数据库查询");
	        List<zyUser> list = UserService.getUserList();
	        System.out.println("list:"+list);
	        // 使用pageInfo包装查询后的结果集,封装详细的分页信息,5是连续显示5页
	        PageInfo pageInfo = new PageInfo(list,5);
	        return pageInfo;
	    }
	    
	    @RequestMapping(value="/user",method=RequestMethod.POST)
	    @ResponseBody
	    public void addUser(zyUser zyuser){
	    	UserService.addUser(zyuser);
	    }
}