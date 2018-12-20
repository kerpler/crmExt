package cn.liti.crm.service;

public interface DetailedStageService {

    void addDetailedStage(String detailedprocessid, Integer detailedcode,
            String detailedstagename, Integer detaileddays);

    void updateDetailedStage(String detailedstageid, String detailedstagename,
            Integer detaileddays);

    void delDetailedStage(String detailedstageid);

   

}
