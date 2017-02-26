package com.dream.rent.pojo;

public class Broker {
    private Integer brokerId;

    private String brokerName;

    private String brokerSex;

    private String brokerInfo;

    private String brokerTel;

    private String brokerEmail;

    private String brokerGegion;

    public Integer getBrokerId() {
        return brokerId;
    }

    public void setBrokerId(Integer brokerId) {
        this.brokerId = brokerId;
    }

    public String getBrokerName() {
        return brokerName;
    }

    public void setBrokerName(String brokerName) {
        this.brokerName = brokerName == null ? null : brokerName.trim();
    }

    public String getBrokerSex() {
        return brokerSex;
    }

    public void setBrokerSex(String brokerSex) {
        this.brokerSex = brokerSex == null ? null : brokerSex.trim();
    }

    public String getBrokerInfo() {
        return brokerInfo;
    }

    public void setBrokerInfo(String brokerInfo) {
        this.brokerInfo = brokerInfo == null ? null : brokerInfo.trim();
    }

    public String getBrokerTel() {
        return brokerTel;
    }

    public void setBrokerTel(String brokerTel) {
        this.brokerTel = brokerTel == null ? null : brokerTel.trim();
    }

    public String getBrokerEmail() {
        return brokerEmail;
    }

    public void setBrokerEmail(String brokerEmail) {
        this.brokerEmail = brokerEmail == null ? null : brokerEmail.trim();
    }

    public String getBrokerGegion() {
        return brokerGegion;
    }

    public void setBrokerGegion(String brokerGegion) {
        this.brokerGegion = brokerGegion == null ? null : brokerGegion.trim();
    }
}