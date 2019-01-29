package cn.liti.crm.model.auto;

import java.math.BigDecimal;
import java.util.Date;

public class Plan {
    private String planid;

    private BigDecimal period;

    private Date createdwhen;

    private BigDecimal versionno;

    private String updatedby;

    private Date updatedwhen;

    private BigDecimal deleted;

    private String createdby;

    private BigDecimal water;

    private BigDecimal floor;

    private BigDecimal middle;

    public String getPlanid() {
        return planid;
    }

    public void setPlanid(String planid) {
        this.planid = planid == null ? null : planid.trim();
    }

    public BigDecimal getPeriod() {
        return period;
    }

    public void setPeriod(BigDecimal period) {
        this.period = period;
    }

    public Date getCreatedwhen() {
        return createdwhen;
    }

    public void setCreatedwhen(Date createdwhen) {
        this.createdwhen = createdwhen;
    }

    public BigDecimal getVersionno() {
        return versionno;
    }

    public void setVersionno(BigDecimal versionno) {
        this.versionno = versionno;
    }

    public String getUpdatedby() {
        return updatedby;
    }

    public void setUpdatedby(String updatedby) {
        this.updatedby = updatedby == null ? null : updatedby.trim();
    }

    public Date getUpdatedwhen() {
        return updatedwhen;
    }

    public void setUpdatedwhen(Date updatedwhen) {
        this.updatedwhen = updatedwhen;
    }

    public BigDecimal getDeleted() {
        return deleted;
    }

    public void setDeleted(BigDecimal deleted) {
        this.deleted = deleted;
    }

    public String getCreatedby() {
        return createdby;
    }

    public void setCreatedby(String createdby) {
        this.createdby = createdby == null ? null : createdby.trim();
    }

    public BigDecimal getWater() {
        return water;
    }

    public void setWater(BigDecimal water) {
        this.water = water;
    }

    public BigDecimal getFloor() {
        return floor;
    }

    public void setFloor(BigDecimal floor) {
        this.floor = floor;
    }

    public BigDecimal getMiddle() {
        return middle;
    }

    public void setMiddle(BigDecimal middle) {
        this.middle = middle;
    }
}