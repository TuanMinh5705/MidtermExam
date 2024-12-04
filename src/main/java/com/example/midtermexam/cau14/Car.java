package com.example.midtermexam.cau14;

public class Car {
    private String name;  // Tên xe
    private String manufacturer;  // Hãng sản xuất
    private double price;  // Giá bán
    private String status;  // Trạng thái (Còn hàng, Hết hàng)

    public Car(String name, String manufacturer, double price, String status) {
        this.name = name;
        this.manufacturer = manufacturer;
        this.price = price;
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
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
        return "Car{" +
                "name='" + name + '\'' +
                ", manufacturer='" + manufacturer + '\'' +
                ", price=" + price +
                ", status='" + status + '\'' +
                '}';
    }
}
