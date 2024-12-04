package com.example.midtermexam.cau3;

public class Student {
    private String name;
    private String studentId;
    private double averageScore;
    private String status;

    public Student(String name, String studentId, double averageScore) {
        this.name = name;
        this.studentId = studentId;
        this.averageScore = averageScore;
        this.status = (averageScore >= 5.0) ? "Đậu" : "Rớt"; // Trạng thái dựa trên điểm
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public double getAverageScore() {
        return averageScore;
    }

    public void setAverageScore(double averageScore) {
        this.averageScore = averageScore;
        this.status = (averageScore >= 5.0) ? "Đậu" : "Rớt"; // Cập nhật trạng thái khi thay đổi điểm
    }

    public String getStatus() {
        return status;
    }

    @Override
    public String toString() {
        return "Student{" +
                "name='" + name + '\'' +
                ", studentId='" + studentId + '\'' +
                ", averageScore=" + averageScore +
                ", status='" + status + '\'' +
                '}';
    }
}
