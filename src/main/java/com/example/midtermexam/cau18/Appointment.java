package com.example.midtermexam.cau18;

import java.util.Date;

public class Appointment {
    private String name;  // Tên cuộc hẹn
    private Date dateTime;  // Ngày và giờ của cuộc hẹn
    private String location;  // Địa điểm
    private String description;  // Mô tả cuộc hẹn

    public Appointment(String name, Date dateTime, String location, String description) {
        this.name = name;
        this.dateTime = dateTime;
        this.location = location;
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDateTime() {
        return dateTime;
    }

    public void setDateTime(Date dateTime) {
        this.dateTime = dateTime;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Appointment{" +
                "name='" + name + '\'' +
                ", dateTime=" + dateTime +
                ", location='" + location + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
