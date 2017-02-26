package com.dream.rent.pojo;

import java.util.Date;

public class User {
    private Integer userId;

    private String userName;

    private String userPassword;

    private String userSex;

    private Integer userAge;

    private String userTel;

    private Integer userVip;

    private String userAddress;

    private Integer userHead;

    private Date userRegisttime;

    private Integer userStatus;

    private Integer newsId;

    private Double userBalance;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword == null ? null : userPassword.trim();
    }

    public String getUserSex() {
        return userSex;
    }

    public void setUserSex(String userSex) {
        this.userSex = userSex == null ? null : userSex.trim();
    }

    public Integer getUserAge() {
        return userAge;
    }

    public void setUserAge(Integer userAge) {
        this.userAge = userAge;
    }

    public String getUserTel() {
        return userTel;
    }

    public void setUserTel(String userTel) {
        this.userTel = userTel == null ? null : userTel.trim();
    }

    public Integer getUserVip() {
        return userVip;
    }

    public void setUserVip(Integer userVip) {
        this.userVip = userVip;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress == null ? null : userAddress.trim();
    }

    public Integer getUserHead() {
        return userHead;
    }

    public void setUserHead(Integer userHead) {
        this.userHead = userHead;
    }

    public Date getUserRegisttime() {
        return userRegisttime;
    }

    public void setUserRegisttime(Date userRegisttime) {
        this.userRegisttime = userRegisttime;
    }

    public Integer getUserStatus() {
        return userStatus;
    }

    public void setUserStatus(Integer userStatus) {
        this.userStatus = userStatus;
    }

    public Integer getNewsId() {
        return newsId;
    }

    public void setNewsId(Integer newsId) {
        this.newsId = newsId;
    }

    public Double getUserBalance() {
        return userBalance;
    }

    public void setUserBalance(Double userBalance) {
        this.userBalance = userBalance;
    }
}