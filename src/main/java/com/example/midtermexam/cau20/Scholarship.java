package com.example.midtermexam.cau20;

import java.util.Date;

public class Scholarship {
    private String name;        // Tên học bổng
    private String criteria;    // Tiêu chí học bổng
    private double value;       // Giá trị học bổng
    private Date deadline;      // Hạn nộp đơn

    // Constructor để khởi tạo thông tin học bổng
    public Scholarship(String name, String criteria, double value, Date deadline) {
        this.name = name;
        this.criteria = criteria;
        this.value = value;
        this.deadline = deadline;
    }

    // Getter và Setter cho các thuộc tính
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCriteria() {
        return criteria;
    }

    public void setCriteria(String criteria) {
        this.criteria = criteria;
    }

    public double getValue() {
        return value;
    }

    public void setValue(double value) {
        this.value = value;
    }

    public Date getDeadline() {
        return deadline;
    }

    public void setDeadline(Date deadline) {
        this.deadline = deadline;
    }

    @Override
    public String toString() {
        return "Scholarship{" +
                "name='" + name + '\'' +
                ", criteria='" + criteria + '\'' +
                ", value=" + value +
                ", deadline=" + deadline +
                '}';
    }
}
