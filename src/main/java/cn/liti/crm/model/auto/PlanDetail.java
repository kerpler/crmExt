package cn.liti.crm.model.auto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.alibaba.fastjson.annotation.JSONField;

public class PlanDetail {
    private String pdetailid;

    private String planid;

    private String itemid;

    private String itemperiod;
    
    private Date itemopen;
    
    private Date itemend;

    private String itemstate;

    private Date createdwhen;

    private Integer versionno;

    private String updatedby;
    
    private Date updatedwhen;

    private Integer deleted;

    private String createdby;

    public String getPdetailid() {
        return pdetailid;
    }

    public void setPdetailid(String pdetailid) {
        this.pdetailid = pdetailid == null ? null : pdetailid.trim();
    }

    public String getPlanid() {
        return planid;
    }

    public void setPlanid(String planid) {
        this.planid = planid == null ? null : planid.trim();
    }

    public String getItemid() {
        return itemid;
    }

    public void setItemid(String itemid) {
        this.itemid = itemid == null ? null : itemid.trim();
    }

    public String getItemperiod() {
        return itemperiod;
    }

    public void setItemperiod(String itemperiod) {
        this.itemperiod = itemperiod == null ? null : itemperiod.trim();
    }

    public Date getItemopen() {
        return itemopen;
    }

    public void setItemopen(Date itemopen) {
        this.itemopen = itemopen;
    }

    public Date getItemend() {
        return itemend;
    }

    public void setItemend(Date itemend) {
        this.itemend = itemend;
    }

    public String getItemstate() {
        return itemstate;
    }

    public void setItemstate(String itemstate) {
        this.itemstate = itemstate == null ? null : itemstate.trim();
    }

    public Date getCreatedwhen() {
        return createdwhen;
    }

    public void setCreatedwhen(Date createdwhen) {
        this.createdwhen = createdwhen;
    }

    public Integer getVersionno() {
        return versionno;
    }

    public void setVersionno(Integer versionno) {
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

    public Integer getDeleted() {
        return deleted;
    }

    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }

    public String getCreatedby() {
        return createdby;
    }

    public void setCreatedby(String createdby) {
        this.createdby = createdby == null ? null : createdby.trim();
    }
    
    @Override
	public String toString() {
		return "PlanDetail [pdetailid=" + pdetailid + ", planid=" + planid
				+ ", itemid=" + itemid + ", itemperiod=" + itemperiod
				+ ", itemopen=" + itemopen + ", itemend=" + itemend
				+ ", itemstate=" + itemstate + ", createdwhen=" + createdwhen
				+ ", versionno=" + versionno + ", updatedby=" + updatedby
				+ ", updatedwhen=" + updatedwhen + ", deleted=" + deleted
				+ ", createdby=" + createdby + "]";
	}
}