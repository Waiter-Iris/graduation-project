package com.dream.rent.pojo;

import java.util.Date;

public class RentHouse {
    private Integer renthouseId;

    private String renthouseHousetype;

    private Double renthousePrice;

    private Double renthouseArea;

    private String renthouseRegion;

    private String renthouseAddress;

    private Date renthouseCreatedate;

    private Date renthouseSenddate;

    private Integer renthouseStatus;

    private Integer userId;

    private Integer brokerId;

    private Integer pictureId;

    public Integer getRenthouseId() {
        return renthouseId;
    }

    public void setRenthouseId(Integer renthouseId) {
        this.renthouseId = renthouseId;
    }

    public String getRenthouseHousetype() {
        return renthouseHousetype;
    }

    public void setRenthouseHousetype(String renthouseHousetype) {
        this.renthouseHousetype = renthouseHousetype == null ? null : renthouseHousetype.trim();
    }

    public Double getRenthousePrice() {
        return renthousePrice;
    }

    public void setRenthousePrice(Double renthousePrice) {
        this.renthousePrice = renthousePrice;
    }

    public Double getRenthouseArea() {
        return renthouseArea;
    }

    public void setRenthouseArea(Double renthouseArea) {
        this.renthouseArea = renthouseArea;
    }

    public String getRenthouseRegion() {
        return renthouseRegion;
    }

    public void setRenthouseRegion(String renthouseRegion) {
        this.renthouseRegion = renthouseRegion == null ? null : renthouseRegion.trim();
    }

    public String getRenthouseAddress() {
        return renthouseAddress;
    }

    public void setRenthouseAddress(String renthouseAddress) {
        this.renthouseAddress = renthouseAddress == null ? null : renthouseAddress.trim();
    }

    public Date getRenthouseCreatedate() {
        return renthouseCreatedate;
    }

    public void setRenthouseCreatedate(Date renthouseCreatedate) {
        this.renthouseCreatedate = renthouseCreatedate;
    }

    public Date getRenthouseSenddate() {
        return renthouseSenddate;
    }

    public void setRenthouseSenddate(Date renthouseSenddate) {
        this.renthouseSenddate = renthouseSenddate;
    }

    public Integer getRenthouseStatus() {
        return renthouseStatus;
    }

    public void setRenthouseStatus(Integer renthouseStatus) {
        this.renthouseStatus = renthouseStatus;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getBrokerId() {
        return brokerId;
    }

    public void setBrokerId(Integer brokerId) {
        this.brokerId = brokerId;
    }

    public Integer getPictureId() {
        return pictureId;
    }

    public void setPictureId(Integer pictureId) {
        this.pictureId = pictureId;
    }
}