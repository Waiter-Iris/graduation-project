package com.dream.rent.pojo;

public class Picture {
    private Integer pictureId;

    private Integer userId;

    private Integer renthouseId;

    private String pictureOne;

    private String pictureTwo;

    private String pictureThree;

    private String pictureFour;

    private String pictureFive;

    public Integer getPictureId() {
        return pictureId;
    }

    public void setPictureId(Integer pictureId) {
        this.pictureId = pictureId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getRenthouseId() {
        return renthouseId;
    }

    public void setRenthouseId(Integer renthouseId) {
        this.renthouseId = renthouseId;
    }

    public String getPictureOne() {
        return pictureOne;
    }

    public void setPictureOne(String pictureOne) {
        this.pictureOne = pictureOne == null ? null : pictureOne.trim();
    }

    public String getPictureTwo() {
        return pictureTwo;
    }

    public void setPictureTwo(String pictureTwo) {
        this.pictureTwo = pictureTwo == null ? null : pictureTwo.trim();
    }

    public String getPictureThree() {
        return pictureThree;
    }

    public void setPictureThree(String pictureThree) {
        this.pictureThree = pictureThree == null ? null : pictureThree.trim();
    }

    public String getPictureFour() {
        return pictureFour;
    }

    public void setPictureFour(String pictureFour) {
        this.pictureFour = pictureFour == null ? null : pictureFour.trim();
    }

    public String getPictureFive() {
        return pictureFive;
    }

    public void setPictureFive(String pictureFive) {
        this.pictureFive = pictureFive == null ? null : pictureFive.trim();
    }
}