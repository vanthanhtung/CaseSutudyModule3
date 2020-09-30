package com.shoestore.service.impl;

import com.shoestore.service.IOrderService;

import java.sql.*;

public class OrderService implements IOrderService {
    public Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/shoestore?useSSL=false";
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

    public int insertOrder(String customerinfo) throws SQLException{
        Connection connection = null;
        PreparedStatement statement = null;
        String sql = "INSERT INTO orders(customerinfor, createddate) VALUES (?,?)";
        int id = -1;
        try{
            connection = getConnection();
            statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            statement.setString(1, customerinfo);
            statement.setTimestamp(2, new Timestamp(System.currentTimeMillis()));
            statement.executeUpdate();
            ResultSet rs = statement.getGeneratedKeys();
            while (rs.next()){
                id = rs.getInt(1);
            }
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
        return id;
    }

    public int insertOrderProduct(int amount,int order_id, int product_id) throws SQLException{
        Connection connection = null;
        PreparedStatement statement = null;
        String sql = "INSERT INTO orderproduct(amount, order_id, product_id) VALUES (?,?,?)";
        int rowEffected =0;
        try{
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            statement.setInt(1, amount);
            statement.setInt(2, order_id);
            statement.setInt(3, product_id);
            rowEffected = statement.executeUpdate();
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
        return rowEffected;
    }
}
