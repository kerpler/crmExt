package cn.liti.crm.dao.auto;

import java.math.BigDecimal;

import cn.liti.crm.model.auto.Num;

public interface NumMapper {
    int deleteByPrimaryKey(BigDecimal snum);

    int insert(Num record);

    int insertSelective(Num record);

    Num selectByPrimaryKey(BigDecimal snum);

    int updateByPrimaryKeySelective(Num record);

    int updateByPrimaryKey(Num record);
}