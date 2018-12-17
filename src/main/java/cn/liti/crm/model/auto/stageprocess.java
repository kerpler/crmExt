package cn.liti.crm.model.auto;

import java.math.BigDecimal;

public class stageprocess {
    private String stageprocessid;

    private String stageprocessname;

    private Integer code;

    private Integer days;

    
    public stageprocess(String stageprocessid, String stageprocessname,
            Integer code, Integer days) {
        super();
        this.stageprocessid = stageprocessid;
        this.stageprocessname = stageprocessname;
        this.code = code;
        this.days = days;
    }

    public stageprocess() {
        super();
        // TODO Auto-generated constructor stub
    }

    public String getStageprocessid() {
        return stageprocessid;
    }

    public void setStageprocessid(String stageprocessid) {
        this.stageprocessid = stageprocessid == null ? null : stageprocessid.trim();
    }

    public String getStageprocessname() {
        return stageprocessname;
    }

    public void setStageprocessname(String stageprocessname) {
        this.stageprocessname = stageprocessname == null ? null : stageprocessname.trim();
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public Integer getDays() {
        return days;
    }

    public void setDays(Integer days) {
        this.days = days;
    }

    @Override
    public String toString() {
        return "stageprocess [stageprocessid=" + stageprocessid
                + ", stageprocessname=" + stageprocessname + ", code=" + code
                + ", days=" + days + "]";
    }
    
}