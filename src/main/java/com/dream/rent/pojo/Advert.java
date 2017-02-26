package com.dream.rent.pojo;

import java.util.Date;

public class Advert {
    private Integer advertId;

    private Date advertCreatedate;

    private Date advertUpdate;

    private Integer renthouseId;

    public Integer getAdvertId() {
        return advertId;
    }

    public void setAdvertId(Integer advertId) {
        this.advertId = advertId;
    }

    public Date getAdvertCreatedate() {
        return advertCreatedate;
    }

    public void setAdvertCreatedate(Date advertCreatedate) {
        this.advertCreatedate = advertCreatedate;
    }

    public Date getAdvertUpdate() {
        return advertUpdate;
    }

    public void setAdvertUpdate(Date advertUpdate) {
        this.advertUpdate = advertUpdate;
    }

    public Integer getRenthouseId() {
        return renthouseId;
    }

    public void setRenthouseId(Integer renthouseId) {
        this.renthouseId = renthouseId;
    }
}