package com.dream.rent.pojo;

import java.util.Date;

public class Vip {
    private Integer vipId;

    private Integer userId;

    private Date vipRegisttime;

    private Integer vipStatus;

    public Integer getVipId() {
        return vipId;
    }

    public void setVipId(Integer vipId) {
        this.vipId = vipId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Date getVipRegisttime() {
        return vipRegisttime;
    }

    public void setVipRegisttime(Date vipRegisttime) {
        this.vipRegisttime = vipRegisttime;
    }

    public Integer getVipStatus() {
        return vipStatus;
    }

    public void setVipStatus(Integer vipStatus) {
        this.vipStatus = vipStatus;
    }
}