package com.shoestore.service.impl;

import com.shoestore.model.ProductModel;
import com.shoestore.service.IProductService;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductService implements IProductService {
    public Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/shoestore";
            String user = "root";
            String password = "123456789";
            return DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException | SQLException e) {
            return null;
        }
    }

    @Override
    public List<ProductModel> findAll() {
        List<ProductModel> lists = new ArrayList<>();
        String sql = "SELECT * FROM product";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        try{
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            rs = statement.executeQuery();
            while(rs.next()){
                int id = rs.getInt(1);
                String productName = rs.getString(2);
                float price = rs.getFloat(3);
                String description = rs.getString(4);
                String thumbnail = rs.getString(5);
                int categoryId = rs.getInt(6);
                lists.add(new ProductModel(id, productName, price, description, thumbnail, categoryId));
            }
            return lists;
        }catch (SQLException e){
            e.getMessage();
            return null;
        }finally {
            try{
                if(connection != null){
                    connection.close();
                }
                if(statement != null){
                    connection.close();
                }
                if(rs != null){
                    connection.close();
                }
            }catch (SQLException e){
                e.getLocalizedMessage();
            }
        }
    }
}
