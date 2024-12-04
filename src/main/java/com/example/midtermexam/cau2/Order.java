package com.example.midtermexam.cau2;

public class Order {
    private String orderId;
    private String orderDate;
    private String customer;
    private String status;

    public Order(String orderId, String orderDate, String customer, String status) {
        this.orderId = orderId;
        this.orderDate = orderDate;
        this.customer = customer;
        this.status = status;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    public String getCustomer() {
        return customer;
    }

    public void setCustomer(String customer) {
        this.customer = customer;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Order{" +
                "orderId='" + orderId + '\'' +
                ", orderDate='" + orderDate + '\'' +
                ", customer='" + customer + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
