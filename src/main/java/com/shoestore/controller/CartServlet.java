package com.shoestore.controller;

import com.shoestore.model.Order;
import com.shoestore.model.Product;
import com.shoestore.service.impl.OrderService;
import com.shoestore.service.impl.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "CartServlet",urlPatterns = "/cart")
public class CartServlet extends HttpServlet {
    ProductService productService = new ProductService();
    OrderService orderService = new OrderService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action){
            case "buy":
                try {
                    addOrder(request,response);
                } catch (SQLException e) {
                    e.getMessage();
                }
                break;
            case "addOrderproduct":
                try {
                    addOrderProduct(request,response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action){
            case "delete":
                deleteFromCart(request,response);
                break;
            case "cart":
                showCart(request,response);
                break;

            default:
                break;
        }
    }
    private void deleteFromCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Order order = (Order) session.getAttribute("order");
        Product product = null;
        List<Product> listProducts = order.getListProducts();
        int id = Integer.parseInt(request.getParameter("id"));
        for (Product x: listProducts){
            if (x.getId()== id){
                listProducts.remove(x);
                break;
            }
        }
        request.setAttribute("listOrder", listProducts);
        RequestDispatcher rd = request.getRequestDispatcher("/view/cart.jsp");
        rd.forward(request, response);
    }

    private void showCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

       try {
           HttpSession session = request.getSession();
           Order order = (Order) session.getAttribute("order");
           List<Product> listProducts = order.getListProducts();
           request.setAttribute("listOrder", listProducts);
           RequestDispatcher rd = request.getRequestDispatcher("/view/cart.jsp");
           rd.forward(request, response);
        }catch (NullPointerException e){
           List<Product> products = productService.findAll();
           request.setAttribute("products", products);
           RequestDispatcher rd = request.getRequestDispatcher("/view/home.jsp");
           rd.forward(request, response);
        }
    }

    private void addOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
       String customerInfo = request.getParameter("customerInfo");
       int order_id = orderService.insertOrder(customerInfo);
    }

    private void addOrderProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException,SQLException{
        int amount = Integer.parseInt(request.getParameter("amount"));

        String customerInfo = request.getParameter("customerInfo");
        int order_id = orderService.insertOrder(customerInfo);
        HttpSession session = request.getSession();
        Order order = (Order) session.getAttribute("order");
        List<Product> listProducts = order.getListProducts();

        for (Product x: listProducts){
            orderService.insertOrderProduct(amount,order_id,x.getId());
        }
    }
}
