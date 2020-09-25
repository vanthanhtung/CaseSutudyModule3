package com.shoestore.service;
import com.shoestore.model.ProductModel;

import java.util.*;

public interface IProductService {
    List<ProductModel> findAll();
    List<ProductModel> findByCategory(int id);
    List<ProductModel> findByName(String productName);
}
