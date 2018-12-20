package cn.liti.crm.model.auto;

import java.math.BigDecimal;
import java.util.Date;

public class zyUser {
    private String userid;

    private String username;

    private String userpwd;

    private int age;

    private Date createdwhen;

    private BigDecimal versionno;

    private String updatedby;

    private Date updatedwhen;

    private BigDecimal deleted;

    private String createdby;

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getUserpwd() {
        return userpwd;
    }

    public void setUserpwd(String userpwd) {
        this.userpwd = userpwd == null ? null : userpwd.trim();
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
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
}