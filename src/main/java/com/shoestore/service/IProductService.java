package com.shoestore.service;
import com.shoestore.model.Product;

import java.util.*;

public interface IProductService {
    List<Product> findAll();
    List<Product> findByCategory(int id);
    List<Product> findByName(String productName);
    Product findById(int id);
}
