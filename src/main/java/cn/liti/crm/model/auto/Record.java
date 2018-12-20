package cn.liti.crm.model.auto;

import java.math.BigDecimal;
import java.util.Date;

public class Record {
    private String pk;

    private String userid;

    private String commitusername;

    private String customer;

    private BigDecimal longitude;

    private BigDecimal latitude;

    private String address;

    private String step;

    private String note;

    private String serverid;

    private String tousers;

    private Date recordtime;

    private Date nextime;

    private String isalert;

    private String isstandard;

    private String reason0;

    private String reason1;

    private String reason2;

    private String reason3;

    private String reason4;

    private String customersno;

    private String type;

    public String getPk() {
        return pk;
    }

    public void setPk(String pk) {
        this.pk = pk == null ? null : pk.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getCommitusername() {
        return commitusername;
    }

    public void setCommitusername(String commitusername) {
        this.commitusername = commitusername == null ? null : commitusername.trim();
    }

    public String getCustomer() {
        return customer;
    }

    public void setCustomer(String customer) {
        this.customer = customer == null ? null : customer.trim();
    }

    public BigDecimal getLongitude() {
        return longitude;
    }

    public void setLongitude(BigDecimal longitude) {
        this.longitude = longitude;
    }

    public BigDecimal getLatitude() {
        return latitude;
    }

    public void setLatitude(BigDecimal latitude) {
        this.latitude = latitude;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getStep() {
        return step;
    }

    public void setStep(String step) {
        this.step = step == null ? null : step.trim();
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note == null ? null : note.trim();
    }

    public String getServerid() {
        return serverid;
    }

    public void setServerid(String serverid) {
        this.serverid = serverid == null ? null : serverid.trim();
    }

    public String getTousers() {
        return tousers;
    }

    public void setTousers(String tousers) {
        this.tousers = tousers == null ? null : tousers.trim();
    }

    public Date getRecordtime() {
        return recordtime;
    }

    public void setRecordtime(Date recordtime) {
        this.recordtime = recordtime;
    }

    public Date getNextime() {
        return nextime;
    }

    public void setNextime(Date nextime) {
        this.nextime = nextime;
    }

    public String getIsalert() {
        return isalert;
    }

    public void setIsalert(String isalert) {
        this.isalert = isalert == null ? null : isalert.trim();
    }

    public String getIsstandard() {
        return isstandard;
    }

    public void setIsstandard(String isstandard) {
        this.isstandard = isstandard == null ? null : isstandard.trim();
    }

    public String getReason0() {
        return reason0;
    }

    public void setReason0(String reason0) {
        this.reason0 = reason0 == null ? null : reason0.trim();
    }

    public String getReason1() {
        return reason1;
    }

    public void setReason1(String reason1) {
        this.reason1 = reason1 == null ? null : reason1.trim();
    }

    public String getReason2() {
        return reason2;
    }

    public void setReason2(String reason2) {
        this.reason2 = reason2 == null ? null : reason2.trim();
    }

    public String getReason3() {
        return reason3;
    }

    public void setReason3(String reason3) {
        this.reason3 = reason3 == null ? null : reason3.trim();
    }

    public String getReason4() {
        return reason4;
    }

    public void setReason4(String reason4) {
        this.reason4 = reason4 == null ? null : reason4.trim();
    }

    public String getCustomersno() {
        return customersno;
    }

    public void setCustomersno(String customersno) {
        this.customersno = customersno == null ? null : customersno.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }
}