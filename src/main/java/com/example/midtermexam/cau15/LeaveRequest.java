package com.example.midtermexam.cau15;

import java.util.Date;

public class LeaveRequest {
    private String employeeName;  // Tên nhân viên
    private Date startDate;  // Ngày bắt đầu nghỉ phép
    private Date endDate;  // Ngày kết thúc nghỉ phép
    private String status;  // Trạng thái (Chờ duyệt, Đã duyệt)

    public LeaveRequest(String employeeName, Date startDate, Date endDate, String status) {
        this.employeeName = employeeName;
        this.startDate = startDate;
        this.endDate = endDate;
        this.status = status;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "LeaveRequest{" +
                "employeeName='" + employeeName + '\'' +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                ", status='" + status + '\'' +
                '}';
    }
}
