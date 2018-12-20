package cn.liti.crm.dao.auto;

import cn.liti.crm.model.auto.Record;

public interface RecordMapper {
    int insert(Record record);

    int insertSelective(Record record);
}