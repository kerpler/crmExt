package cn.liti.crm.model.auto;

import java.math.BigDecimal;
import java.util.Date;

public class company {
    private String cyid;

    private String companyid;

    private String companyname;

    private String address;

    private String createdby;

    private Date createdwhen;

    private BigDecimal versionno;

    private String updatedby;

    private Date updatedwhen;

    private BigDecimal deleted;

    public String getCyid() {
        return cyid;
    }

    public void setCyid(String cyid) {
        this.cyid = cyid == null ? null : cyid.trim();
    }

    public String getCompanyid() {
        return companyid;
    }

    public void setCompanyid(String companyid) {
        this.companyid = companyid == null ? null : companyid.trim();
    }

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname == null ? null : companyname.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
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
}