package com.example.midtermexam.cau10;

public class OnlineCourse {
    private String courseName;
    private String instructor;
    private int hours;
    private double price;

    // Constructor
    public OnlineCourse(String courseName, String instructor, int hours, double price) {
        this.courseName = courseName;
        this.instructor = instructor;
        this.hours = hours;
        this.price = price;
    }

    // Getters and Setters
    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getInstructor() {
        return instructor;
    }

    public void setInstructor(String instructor) {
        this.instructor = instructor;
    }

    public int getHours() {
        return hours;
    }

    public void setHours(int hours) {
        this.hours = hours;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "OnlineCourse{" +
                "courseName='" + courseName + '\'' +
                ", instructor='" + instructor + '\'' +
                ", hours=" + hours +
                ", price=" + price +
                '}';
    }
}
