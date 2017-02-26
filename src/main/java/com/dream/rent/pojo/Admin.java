package com.dream.rent.pojo;

public class Admin {
    private Integer adminId;

    private String adminUsername;

    private String adminPassword;

    private Integer adminHead;

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public String getAdminUsername() {
        return adminUsername;
    }

    public void setAdminUsername(String adminUsername) {
        this.adminUsername = adminUsername == null ? null : adminUsername.trim();
    }

    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword == null ? null : adminPassword.trim();
    }

    public Integer getAdminHead() {
        return adminHead;
    }

    public void setAdminHead(Integer adminHead) {
        this.adminHead = adminHead;
    }
}