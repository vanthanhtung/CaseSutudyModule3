package com.shoestore.service.impl;

import com.shoestore.model.Product;
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
    public List<Product> findAll() {
        List<Product> lists = new ArrayList<>();
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
                lists.add(new Product(id, productName, price, description, thumbnail, categoryId));
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

    @Override
    public List<Product> findByCategory(int id) {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM product WHERE category_id = ?";
        List<Product> lists = new ArrayList<>();
        try{
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            rs = statement.executeQuery();
            while (rs.next()){
                int newId = rs.getInt(1);
                String productName = rs.getString(2);
                float price = rs.getFloat(3);
                String description = rs.getString(4);
                String thumbnail = rs.getString(5);
                int categoryId = rs.getInt(6);
                lists.add(new Product(newId, productName,price,description,thumbnail,categoryId));
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
                } if(rs != null){
                    connection.close();
                }
            }catch (SQLException e2){
                e2.getMessage();
            }
        }
    }

    @Override
    public List<Product> findByName(String productName) {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM product WHERE product_name LIKE ?";
        List<Product> lists = new ArrayList<>();
        try{
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            String str = "%" + productName + "%";
            statement.setString(1, str);
            rs = statement.executeQuery();
            while (rs.next()){
                int newId = rs.getInt(1);
                String product_name = rs.getString(2);
                float price = rs.getFloat(3);
                String description = rs.getString(4);
                String thumbnail = rs.getString(5);
                int categoryId = rs.getInt(6);
                lists.add(new Product(newId, product_name,price,description,thumbnail,categoryId));
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
                } if(rs != null){
                    connection.close();
                }
            }catch (SQLException e2){
                e2.getMessage();
            }
        }
    }

    @Override
    public Product findById(int id) {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM product WHERE id = ?";
        try{
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            rs = statement.executeQuery();

            while (rs.next()) {
                int newId = rs.getInt(1);
                String product_name = rs.getString(2);
                float price = rs.getFloat(3);
                String description = rs.getString(4);
                String thumbnail = rs.getString(5);
                int categoryId = rs.getInt(6);
                return new Product(newId, product_name,price,description,thumbnail,categoryId);
            }

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
                } if(rs != null){
                    connection.close();
                }
            }catch (SQLException e2){
                e2.getMessage();
            }
        }
        return null;
    }

}
