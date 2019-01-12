package cn.liti.crm.model.auto;

import java.math.BigDecimal;

public class Construction {
    private BigDecimal id;

    private String customersno;

    private String customersname;

    private String foremanfn;

    private String supervisionfn;

    private String isma;

    private String address;

    private String customerstel;

    private String designername;

    public BigDecimal getId() {
        return id;
    }

    public void setId(BigDecimal id) {
        this.id = id;
    }

    public String getCustomersno() {
        return customersno;
    }

    public void setCustomersno(String customersno) {
        this.customersno = customersno == null ? null : customersno.trim();
    }

    public String getCustomersname() {
        return customersname;
    }

    public void setCustomersname(String customersname) {
        this.customersname = customersname == null ? null : customersname.trim();
    }

    public String getForemanfn() {
        return foremanfn;
    }

    public void setForemanfn(String foremanfn) {
        this.foremanfn = foremanfn == null ? null : foremanfn.trim();
    }

    public String getSupervisionfn() {
        return supervisionfn;
    }

    public void setSupervisionfn(String supervisionfn) {
        this.supervisionfn = supervisionfn == null ? null : supervisionfn.trim();
    }

    public String getIsma() {
        return isma;
    }

    public void setIsma(String isma) {
        this.isma = isma == null ? null : isma.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getCustomerstel() {
        return customerstel;
    }

    public void setCustomerstel(String customerstel) {
        this.customerstel = customerstel == null ? null : customerstel.trim();
    }

    public String getDesignername() {
        return designername;
    }

    public void setDesignername(String designername) {
        this.designername = designername == null ? null : designername.trim();
    }
}