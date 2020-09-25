package com.shoestore.controller;

import com.shoestore.model.ProductModel;
import com.shoestore.service.impl.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.*;

@WebServlet(name = "HomeServlet", urlPatterns = "/home")
public class HomeServlet extends HttpServlet {
    ProductService productService = new ProductService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try{
            switch (action){
                case "search":
                    searchByName(request, response);
                    break;
                default:
                    listProduct(request,response);
                    break;
            }
        }
        catch (SQLException ex){
            throw new ServletException(ex);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try{
            switch (action){
                case "nike-product":
                    listProductByCategory(request, response, 2);
                    break;
                case "adidas-product":
                    listProductByCategory(request, response, 1);
                    break;
                case "vans-product":
                    listProductByCategory(request, response, 3);
                    break;
                case "cart":
                    showCart(request,response);
                    break;
                default:
                    listProduct(request,response);
                    break;
            }
        }
        catch (SQLException ex){
            throw new ServletException(ex);
        }
    }

    private void listProduct(HttpServletRequest request,HttpServletResponse response)
    throws SQLException,IOException,ServletException {
        List<ProductModel> products = productService.findAll();
        request.setAttribute("products", products);
        RequestDispatcher rd = request.getRequestDispatcher("/view/home.jsp");
        rd.forward(request, response);
    }

    private void listProductByCategory(HttpServletRequest request,HttpServletResponse response, int id)
            throws SQLException,IOException,ServletException {
        List<ProductModel> products = productService.findByCategory(id);
        request.setAttribute("products", products);
        RequestDispatcher rd = request.getRequestDispatcher("/view/home.jsp");
        rd.forward(request, response);
    }

    private void searchByName(HttpServletRequest request,HttpServletResponse response)
            throws SQLException,IOException,ServletException {
        List<ProductModel> products = productService.findByName(request.getParameter("searchProductName"));
        request.setAttribute("products", products);
        RequestDispatcher rd = request.getRequestDispatcher("/view/home.jsp");
        rd.forward(request, response);
    }
}
