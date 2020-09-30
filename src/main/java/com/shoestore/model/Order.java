package com.shoestore.model;

import java.sql.Timestamp;
import java.util.*;

public class Order {
    private int id;
    private int cartId;
    private List<Product> listProducts;

    public List<Integer> getAmountList() {
        return amountList;
    }

    public void setAmountList(List<Integer> amountList) {
        this.amountList = amountList;
    }

    private List<Integer> amountList;
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

    public List<Product> getListProducts() {
        return listProducts;
    }

    public void setListProducts(List<Product> listProducts) {
        this.listProducts = listProducts;
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
