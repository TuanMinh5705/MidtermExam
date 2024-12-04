package com.example.midtermexam.cau11;

import java.util.Date;

public class EmployeeAttendance {
    private String employeeName;
    private Date workingDay;
    private int hoursWorked;
    private String status;

    public EmployeeAttendance(String employeeName, Date workingDay, int hoursWorked, String status) {
        this.employeeName = employeeName;
        this.workingDay = workingDay;
        this.hoursWorked = hoursWorked;
        this.status = status;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public Date getWorkingDay() {
        return workingDay;
    }

    public void setWorkingDay(Date workingDay) {
        this.workingDay = workingDay;
    }

    public int getHoursWorked() {
        return hoursWorked;
    }

    public void setHoursWorked(int hoursWorked) {
        this.hoursWorked = hoursWorked;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "EmployeeAttendance{" +
                "employeeName='" + employeeName + '\'' +
                ", workingDay=" + workingDay +
                ", hoursWorked=" + hoursWorked +
                ", status='" + status + '\'' +
                '}';
    }
}
