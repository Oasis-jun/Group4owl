package com.web.web_spingboot.entity;

public class Meeting {
    private int id;
    private java.sql.Date date;
    private String time;
    private String topic;
    private String speaker;

    public Meeting() {
    }

    public Meeting(int id, java.sql.Date date, String time, String topic, String speaker) {
        this.id = id;
        this.date = date;
        this.time = time;
        this.topic = topic;
        this.speaker = speaker;
    }

    // Getter and setter methods

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public java.sql.Date getDate() {
        return date;
    }

    public void setDate(java.sql.Date date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getSpeaker() {
        return speaker;
    }

    public void setSpeaker(String speaker) {
        this.speaker = speaker;
    }
}
