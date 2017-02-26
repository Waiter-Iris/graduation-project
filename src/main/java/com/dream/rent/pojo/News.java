package com.dream.rent.pojo;

import java.util.Date;

public class News {
    private Integer newsId;

    private String newsContent;

    private Date newsSendtime;

    private Integer userId;

    private Integer findhouseId;

    private Integer renthouseId;

    public Integer getNewsId() {
        return newsId;
    }

    public void setNewsId(Integer newsId) {
        this.newsId = newsId;
    }

    public String getNewsContent() {
        return newsContent;
    }

    public void setNewsContent(String newsContent) {
        this.newsContent = newsContent == null ? null : newsContent.trim();
    }

    public Date getNewsSendtime() {
        return newsSendtime;
    }

    public void setNewsSendtime(Date newsSendtime) {
        this.newsSendtime = newsSendtime;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getFindhouseId() {
        return findhouseId;
    }

    public void setFindhouseId(Integer findhouseId) {
        this.findhouseId = findhouseId;
    }

    public Integer getRenthouseId() {
        return renthouseId;
    }

    public void setRenthouseId(Integer renthouseId) {
        this.renthouseId = renthouseId;
    }
}