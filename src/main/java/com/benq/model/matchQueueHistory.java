package com.benq.model;

import java.util.Date;

public class matchQueueHistory {
    private Integer id;

    private Date querytime;

    private String roomid;

    private String userids;

    private Double roomrlo;

    private Integer matchtimes;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getQuerytime() {
        return querytime;
    }

    public void setQuerytime(Date querytime) {
        this.querytime = querytime;
    }

    public String getRoomid() {
        return roomid;
    }

    public void setRoomid(String roomid) {
        this.roomid = roomid == null ? null : roomid.trim();
    }

    public String getUserids() {
        return userids;
    }

    public void setUserids(String userids) {
        this.userids = userids == null ? null : userids.trim();
    }

    public Double getRoomrlo() {
        return roomrlo;
    }

    public void setRoomrlo(Double roomrlo) {
        this.roomrlo = roomrlo;
    }

    public Integer getMatchtimes() {
        return matchtimes;
    }

    public void setMatchtimes(Integer matchtimes) {
        this.matchtimes = matchtimes;
    }
}