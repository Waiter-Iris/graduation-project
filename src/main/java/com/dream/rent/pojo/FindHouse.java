package com.dream.rent.pojo;

import java.util.Date;

public class FindHouse {
    private Integer findhouseId;

    private Double findhousePrice;

    private String findhouseRegion;

    private String findhouseHousetype;

    private Double findhouseArea;

    private Date findhouseCreatedate;

    private Date findhouseSenddate;

    private Integer findhouseStatus;

    private Integer userId;

    public Integer getFindhouseId() {
        return findhouseId;
    }

    public void setFindhouseId(Integer findhouseId) {
        this.findhouseId = findhouseId;
    }

    public Double getFindhousePrice() {
        return findhousePrice;
    }

    public void setFindhousePrice(Double findhousePrice) {
        this.findhousePrice = findhousePrice;
    }

    public String getFindhouseRegion() {
        return findhouseRegion;
    }

    public void setFindhouseRegion(String findhouseRegion) {
        this.findhouseRegion = findhouseRegion == null ? null : findhouseRegion.trim();
    }

    public String getFindhouseHousetype() {
        return findhouseHousetype;
    }

    public void setFindhouseHousetype(String findhouseHousetype) {
        this.findhouseHousetype = findhouseHousetype == null ? null : findhouseHousetype.trim();
    }

    public Double getFindhouseArea() {
        return findhouseArea;
    }

    public void setFindhouseArea(Double findhouseArea) {
        this.findhouseArea = findhouseArea;
    }

    public Date getFindhouseCreatedate() {
        return findhouseCreatedate;
    }

    public void setFindhouseCreatedate(Date findhouseCreatedate) {
        this.findhouseCreatedate = findhouseCreatedate;
    }

    public Date getFindhouseSenddate() {
        return findhouseSenddate;
    }

    public void setFindhouseSenddate(Date findhouseSenddate) {
        this.findhouseSenddate = findhouseSenddate;
    }

    public Integer getFindhouseStatus() {
        return findhouseStatus;
    }

    public void setFindhouseStatus(Integer findhouseStatus) {
        this.findhouseStatus = findhouseStatus;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}