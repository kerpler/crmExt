package cn.liti.crm.model.auto;

import java.math.BigDecimal;

public class Num {
    private BigDecimal snum;

    private String sdax;

    public BigDecimal getSnum() {
        return snum;
    }

    public void setSnum(BigDecimal snum) {
        this.snum = snum;
    }

    public String getSdax() {
        return sdax;
    }

    public void setSdax(String sdax) {
        this.sdax = sdax == null ? null : sdax.trim();
    }
}