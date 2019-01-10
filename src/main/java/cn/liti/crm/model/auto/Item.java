package cn.liti.crm.model.auto;

import java.util.Date;

public class Item {
    private String id;

    private Integer code;

    private String codename;

    private String period;

    private String sort;

    private String sortname;

    private String allperiod;

    private String createdby;

    private Date createdwhen;

    private Integer versionno;

    private String updatedby;

    private Date updatedwhen;

    private Integer deleted;

    private String note;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getCodename() {
        return codename;
    }

    public void setCodename(String codename) {
        this.codename = codename == null ? null : codename.trim();
    }

    public String getPeriod() {
        return period;
    }

    public void setPeriod(String period) {
        this.period = period == null ? null : period.trim();
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort == null ? null : sort.trim();
    }

    public String getSortname() {
        return sortname;
    }

    public void setSortname(String sortname) {
        this.sortname = sortname == null ? null : sortname.trim();
    }

    public String getAllperiod() {
        return allperiod;
    }

    public void setAllperiod(String allperiod) {
        this.allperiod = allperiod == null ? null : allperiod.trim();
    }

    public String getCreatedby() {
        return createdby;
    }

    public void setCreatedby(String createdby) {
        this.createdby = createdby == null ? null : createdby.trim();
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

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note == null ? null : note.trim();
    }
    
    @Override
    public String toString() {
        return "Item [id=" 
        		+ id + 
        		", code=" 
        		+ code + 
        		", codename="
        		+ codename + 
        		", period="
        		+ period + 
        		", sort="
        		+ sort + 
        		", sortname="
        		+ sortname + 
        		", allperiod="
        		+ allperiod + 
        		", note="
        		+ note + 
        		"]";
    }
}