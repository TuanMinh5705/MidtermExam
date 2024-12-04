package com.example.midtermexam.cau17;

public class StudyMaterial {
    private String title;  // Tên tài liệu
    private String subject;  // Môn học
    private String instructor;  // Giảng viên
    private String format;  // Định dạng tài liệu (PDF, Word, v.v.)

    public StudyMaterial(String title, String subject, String instructor, String format) {
        this.title = title;
        this.subject = subject;
        this.instructor = instructor;
        this.format = format;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getInstructor() {
        return instructor;
    }

    public void setInstructor(String instructor) {
        this.instructor = instructor;
    }

    public String getFormat() {
        return format;
    }

    public void setFormat(String format) {
        this.format = format;
    }

    @Override
    public String toString() {
        return "StudyMaterial{" +
                "title='" + title + '\'' +
                ", subject='" + subject + '\'' +
                ", instructor='" + instructor + '\'' +
                ", format='" + format + '\'' +
                '}';
    }
}
