package com.example.midtermexam.cau5;

public class Employee {
    private String name;
    private String department;
    private String position;
    private double salary;
    private String workingStatus;

    // Constructor
    public Employee(String name, String department, String position, double salary, String workingStatus) {
        this.name = name;
        this.department = department;
        this.position = position;
        this.salary = salary;
        this.workingStatus = workingStatus;
    }

    // Getters and Setters
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public String getWorkingStatus() {
        return workingStatus;
    }

    public void setWorkingStatus(String workingStatus) {
        this.workingStatus = workingStatus;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "name='" + name + '\'' +
                ", department='" + department + '\'' +
                ", position='" + position + '\'' +
                ", salary=" + salary +
                ", workingStatus='" + workingStatus + '\'' +
                '}';
    }
}
