package cn.liti.crm.model.auto;

import java.util.Date;

public class PlanDetailView {
    private String tab;

    private String tabname;

    private String stepname;

    private String customersno;

    private Date starts;

    private Date ends;

    private String note;

    public String getTab() {
        return tab;
    }

    public void setTab(String tab) {
        this.tab = tab == null ? null : tab.trim();
    }

    public String getTabname() {
        return tabname;
    }

    public void setTabname(String tabname) {
        this.tabname = tabname == null ? null : tabname.trim();
    }

    public String getStepname() {
        return stepname;
    }

    public void setStepname(String stepname) {
        this.stepname = stepname == null ? null : stepname.trim();
    }

    public String getCustomersno() {
        return customersno;
    }

    public void setCustomersno(String customersno) {
        this.customersno = customersno == null ? null : customersno.trim();
    }

    public Date getStarts() {
        return starts;
    }

    public void setStarts(Date starts) {
        this.starts = starts;
    }

    public Date getEnds() {
        return ends;
    }

    public void setEnds(Date ends) {
        this.ends = ends;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note == null ? null : note.trim();
    }

	@Override
	public String toString() {
		return "PlanDetailView [tab=" + tab + ", tabname=" + tabname
				+ ", stepname=" + stepname + ", customersno=" + customersno
				+ ", starts=" + starts + ", ends=" + ends + ", note=" + note
				+ "]";
	}
    
    
}