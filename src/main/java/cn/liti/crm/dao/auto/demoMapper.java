package cn.liti.crm.dao.auto;

import org.apache.ibatis.annotations.Param;

import cn.liti.crm.model.auto.demo;

public interface demoMapper {
//    int insert(demo record);

    int insertSelective(demo record);

    int findCount(@Param("username")String username, @Param("password")String password);

    int insert(@Param("demoid")String demoid,@Param("username1")String username1, @Param("password1") String password1);
}