package com.shoestore.model;

import java.sql.Timestamp;

public class CartModel {
    private int id;
    private Timestamp createdDate;
    private String infoCustomer;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Timestamp getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Timestamp createdDate) {
        this.createdDate = createdDate;
    }

    public String getInfoCustomer() {
        return infoCustomer;
    }

    public void setInfoCustomer(String infoCustomer) {
        this.infoCustomer = infoCustomer;
    }
}
