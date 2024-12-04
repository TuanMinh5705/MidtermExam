package com.example.midtermexam.cau1;

public class Product {
    private String name;
    private String price;
    private String describe;
    private String urlImage;

    public Product(String name, String price, String describe, String urlImage) {
        this.name = name;
        this.price = price;
        this.describe = describe;
        this.urlImage = urlImage;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getUrlImage() {
        return urlImage;
    }

    public void setUrlImage(String urlImage) {
        this.urlImage = urlImage;
    }

    @Override
    public String toString() {
        return "ShowProductList{" +
                "name='" + name + '\'' +
                ", price='" + price + '\'' +
                ", describe='" + describe + '\'' +
                ", urlImage='" + urlImage + '\'' +
                '}';
    }
}
