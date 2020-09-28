package com.shoestore.model;

import java.sql.Timestamp;
import java.util.*;

public class OrderModel {
    private int id;
    private int cartId;
    private List<ProductModel> listProducts;
    private int amount;
    private Timestamp createdDate;
    private String infoCustomer;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

    public List<ProductModel> getListProducts() {
        return listProducts;
    }

    public void setListProducts(List<ProductModel> listProducts) {
        this.listProducts = listProducts;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
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
