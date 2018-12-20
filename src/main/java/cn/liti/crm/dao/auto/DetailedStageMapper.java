package cn.liti.crm.dao.auto;

import org.apache.ibatis.annotations.Param;

import cn.liti.crm.model.auto.DetailedStage;

public interface DetailedStageMapper {
    int insert(DetailedStage record);

    int insertSelective(DetailedStage record);

    void addDetailedStage(@Param("detailedprocessid")String detailedprocessid, @Param("detailedcode")Integer detailedcode,
            @Param("detailedstagename")String detailedstagename, @Param("detaileddays")Integer detaileddays);

    void updateDetailedStage(@Param("detailedstageid")String detailedstageid,@Param("detailedstagename") String detailedstagename,
            @Param("detaileddays") Integer detaileddays);

    void delDetailedStage(String detailedstageid);
}