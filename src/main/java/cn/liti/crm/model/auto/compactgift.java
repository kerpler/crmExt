package cn.liti.crm.model.auto;

import java.math.BigDecimal;
import java.util.Date;

public class compactgift {
    private String compactgiftid;

    private BigDecimal code;

    private String codename;

    private Date compactgiftstart;

    private Date compactgiftend;

    private String compactgiftnote;

    private String islongterm;

    private String createdby;

    private Date createdwhen;

    private BigDecimal versionno;

    private String updatedby;

    private Date updatedwhen;

    public String getCompactgiftid() {
        return compactgiftid;
    }

    public void setCompactgiftid(String compactgiftid) {
        this.compactgiftid = compactgiftid == null ? null : compactgiftid.trim();
    }

    public BigDecimal getCode() {
        return code;
    }

    public void setCode(BigDecimal code) {
        this.code = code;
    }

    public String getCodename() {
        return codename;
    }

    public void setCodename(String codename) {
        this.codename = codename == null ? null : codename.trim();
    }

    public Date getCompactgiftstart() {
        return compactgiftstart;
    }

    public void setCompactgiftstart(Date compactgiftstart) {
        this.compactgiftstart = compactgiftstart;
    }

    public Date getCompactgiftend() {
        return compactgiftend;
    }

    public void setCompactgiftend(Date compactgiftend) {
        this.compactgiftend = compactgiftend;
    }

    public String getCompactgiftnote() {
        return compactgiftnote;
    }

    public void setCompactgiftnote(String compactgiftnote) {
        this.compactgiftnote = compactgiftnote == null ? null : compactgiftnote.trim();
    }

    public String getIslongterm() {
        return islongterm;
    }

    public void setIslongterm(String islongterm) {
        this.islongterm = islongterm == null ? null : islongterm.trim();
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
}