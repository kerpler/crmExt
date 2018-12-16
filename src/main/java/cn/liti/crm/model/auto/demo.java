package cn.liti.crm.model.auto;

public class demo {
    private String demoid;

    private String username;

    private String password;

    public String getDemoid() {
        return demoid;
    }

    public void setDemoid(String demoid) {
        this.demoid = demoid == null ? null : demoid.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }
}