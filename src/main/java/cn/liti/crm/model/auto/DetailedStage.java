package cn.liti.crm.model.auto;

import java.math.BigDecimal;

public class DetailedStage {
    private String detailedstageid;

    private String detailedprocessid;

    private String detailedstagename;

    private Integer detailedcode;

    private Integer detaileddays;

    public String getDetailedstageid() {
        return detailedstageid;
    }

    public void setDetailedstageid(String detailedstageid) {
        this.detailedstageid = detailedstageid == null ? null : detailedstageid.trim();
    }

    public String getDetailedprocessid() {
        return detailedprocessid;
    }

    public void setDetailedprocessid(String detailedprocessid) {
        this.detailedprocessid = detailedprocessid == null ? null : detailedprocessid.trim();
    }

    public String getDetailedstagename() {
        return detailedstagename;
    }

    public void setDetailedstagename(String detailedstagename) {
        this.detailedstagename = detailedstagename == null ? null : detailedstagename.trim();
    }

    public Integer getDetailedcode() {
        return detailedcode;
    }

    public void setDetailedcode(Integer detailedcode) {
        this.detailedcode = detailedcode;
    }

    public Integer getDetaileddays() {
        return detaileddays;
    }

    public void setDetaileddays(Integer detaileddays) {
        this.detaileddays = detaileddays;
    }
}