package com.shoestore.service.impl;

import com.shoestore.service.IOrderService;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class OrderService implements IOrderService {
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
    public void addNewProduct(int cartId, int productId) {
        Connection connection = null;
        PreparedStatement statement = null;
        String sql = "INSERT INTO cartproduct (cart_id, product_id) VALUES (?, ?)";
        try{
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            statement.setInt(1, cartId);
            statement.setInt(2, productId);
            statement.executeUpdate();
        }catch (SQLException e){
            e.getMessage();
        }finally {
            try{
                if(connection != null){
                    connection.close();
                }
                if(statement != null){
                    statement.close();
                }
            }catch (SQLException s2){
                s2.getMessage();
            }
        }
    }
}
