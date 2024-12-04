package com.example.midtermexam.cau9;

import java.util.Date;

public class Tour {
    private String tourName;
    private String destination;
    private Date departureDate;
    private double price;
    private String status;

    // Constructor
    public Tour(String tourName, String destination, Date departureDate, double price, String status) {
        this.tourName = tourName;
        this.destination = destination;
        this.departureDate = departureDate;
        this.price = price;
        this.status = status;
    }

    // Getters and Setters
    public String getTourName() {
        return tourName;
    }

    public void setTourName(String tourName) {
        this.tourName = tourName;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public Date getDepartureDate() {
        return departureDate;
    }

    public void setDepartureDate(Date departureDate) {
        this.departureDate = departureDate;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Tour{" +
                "tourName='" + tourName + '\'' +
                ", destination='" + destination + '\'' +
                ", departureDate=" + departureDate +
                ", price=" + price +
                ", status='" + status + '\'' +
                '}';
    }
}
