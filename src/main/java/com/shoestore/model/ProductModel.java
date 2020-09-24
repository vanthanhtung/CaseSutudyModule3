package com.shoestore.model;

public class ProductModel {
    private int id;
    private String productName;
    private float price;
    private String description;
    private String thumbnail;
    private int categoryId;

    public ProductModel(int id, String productName, float price, String description, String thumbnail, int categoryId){
        this.id = id;
        this.productName = productName;
        this.price = price;
        this.description = description;
        this.thumbnail = thumbnail;
        this.categoryId = categoryId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }
}
