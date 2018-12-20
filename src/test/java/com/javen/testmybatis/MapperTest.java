package com.javen.testmybatis;
import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.liti.crm.dao.auto.zyUserMapper;
import cn.liti.crm.model.auto.zyUser;

/**
 * 测试dao层
 * @author ws
 * Spring项目可以使用spring的单元测试，可以自动注入我们需要的组件
 * 1.导入SpringTest模块spring-test-4.1.7.RELEASE.jar
 * 2.@ContextConfiguration指定配置文件位置
 *   @RunWith(SpringJUnit4ClassRunner.class)指定使用spring的单元测试
 * 3.直接autowired要使用的组件即可
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-mybatis.xml"})
public class MapperTest {
    @Autowired
    zyUserMapper zyUserMapper;
    
    @Autowired
    SqlSession sqlSession;

    public static void main(String[] args) {
        /*// 1.创建SpringIOC容器
        ApplicationContext ioc = new ClassPathXmlApplicationContext("springContext.xml");
        // 2.从容器中获取mapper
        zyzyUserMapper bean = ioc.getBean(zyzyUserMapper.class);*/
    }
    
    
    @Test
    public void testC(){
        System.out.println(">>>>>>>>>>>>>>>>>>>>" + zyUserMapper);
        zyUser zyUser = new zyUser();
        zyUser.setUserid("testCRUD3");
        zyUser.setUsername("李小龙");
        zyUser.setUserpwd("qwer123");
        zyUser.setAge(55);;
        zyUserMapper.insertSelective(zyUser);
        /*for(int i = 0;i < 500;i++){
            String uid = UUID.randomUUID().toString().substring(0, 5);
            String uname = "王大" + i;
            zyUserMapper.insertSelective(new zyUser(uid, uname, "123", i));
            System.out.println("插入成功！");
        }*/
        System.out.println("插入完成");
    }
    
    @Test
    public void testCs(){
       /* zyUserMapper zyUserMapper = sqlSession.getMapper(zyUserMapper.class);
        for(int i = 0;i < 10;i++){
            String uid = UUID.randomUUID().toString().substring(0, 5);
            String id = UUID.randomUUID().toString().substring(5,10);
            zyUserMapper.insertSelective(new zyUser(uid));
        }*/
    }
}
