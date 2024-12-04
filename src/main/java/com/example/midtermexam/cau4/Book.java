package com.example.midtermexam.cau4;

public class Book {
    private String title;
    private String author;
    private String category;
    private int yearOfPublication;

    public Book(String title, String author, String category, int yearOfPublication) {
        this.title = title;
        this.author = author;
        this.category = category;
        this.yearOfPublication = yearOfPublication;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getYearOfPublication() {
        return yearOfPublication;
    }

    public void setYearOfPublication(int yearOfPublication) {
        this.yearOfPublication = yearOfPublication;
    }

    @Override
    public String toString() {
        return "Book{" +
                "title='" + title + '\'' +
                ", author='" + author + '\'' +
                ", category='" + category + '\'' +
                ", yearOfPublication=" + yearOfPublication +
                '}';
    }
}
