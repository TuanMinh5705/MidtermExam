package com.example.midtermexam.cau12;

import java.util.Date;

public class Event {
    private String eventName;
    private Date eventDateTime;
    private String location;
    private int participantsCount;

    public Event(String eventName, Date eventDateTime, String location, int participantsCount) {
        this.eventName = eventName;
        this.eventDateTime = eventDateTime;
        this.location = location;
        this.participantsCount = participantsCount;
    }

    public String getEventName() {
        return eventName;
    }

    public void setEventName(String eventName) {
        this.eventName = eventName;
    }

    public Date getEventDateTime() {
        return eventDateTime;
    }

    public void setEventDateTime(Date eventDateTime) {
        this.eventDateTime = eventDateTime;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getParticipantsCount() {
        return participantsCount;
    }

    public void setParticipantsCount(int participantsCount) {
        this.participantsCount = participantsCount;
    }

    @Override
    public String toString() {
        return "Event{" +
                "eventName='" + eventName + '\'' +
                ", eventDateTime=" + eventDateTime +
                ", location='" + location + '\'' +
                ", participantsCount=" + participantsCount +
                '}';
    }
}
