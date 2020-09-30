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
import java.util.*;

@WebServlet(name = "HomeServlet", urlPatterns = "/home")
public class HomeServlet extends HttpServlet {
    ProductService productService = new ProductService();
    OrderService orderService = new OrderService();
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
                case "addToCart":
                    addToCart(request,response);
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
        List<Product> products = productService.findAll();
        request.setAttribute("products", products);
//        cartService.removeCartByStatus(0);
//        int idCart = cartService.addNewCart();
//        session = request.getSession();
//        session.setAttribute("idCart", idCart);
  //      System.out.println(session.getAttribute("idCart"));
        RequestDispatcher rd = request.getRequestDispatcher("/view/home.jsp");
        rd.forward(request, response);

    }

    private void listProductByCategory(HttpServletRequest request,HttpServletResponse response, int id)
            throws SQLException,IOException,ServletException {
        List<Product> products = productService.findByCategory(id);
        request.setAttribute("products", products);
        RequestDispatcher rd = request.getRequestDispatcher("/view/home.jsp");
        rd.forward(request, response);
    }

    private void searchByName(HttpServletRequest request,HttpServletResponse response)
            throws SQLException,IOException,ServletException {
        List<Product> products = productService.findByName(request.getParameter("searchProductName"));
        request.setAttribute("products", products);
        RequestDispatcher rd = request.getRequestDispatcher("/view/home.jsp");
        rd.forward(request, response);
    }

//    private void showCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        HttpSession session = request.getSession();
//        OrderModel order = (OrderModel) session.getAttribute("order");
//        List<ProductModel> listProducts = order.getListProducts();
//        request.setAttribute("listOrder", listProducts);
//        RequestDispatcher rd = request.getRequestDispatcher("/view/cart.jsp");
//        rd.forward(request, response);
//    }

    private void addToCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        int productId = Integer.parseInt(request.getParameter("id"));
        HttpSession session = request.getSession();
        if(session.getAttribute("order") == null){
            Order order = new Order();
            List<Product> listProduct = new ArrayList<Product>();
            listProduct.add(productService.findById(productId));
            order.setListProducts(listProduct);
            session.setAttribute("order", order);
        }else {
            Order order = (Order) session.getAttribute("order");
            List<Product> listIdProduct = order.getListProducts();
            boolean checkContain = false;
            for(Product product : listIdProduct){
                if(product.getId() == productId){
                    checkContain = true;
                }
            }
            if(checkContain == false){
                listIdProduct.add(productService.findById(productId));
            }
            //session.setAttribute("order", order);
        }

        List<Product> products = productService.findAll();
        request.setAttribute("products", products);
        RequestDispatcher rd = request.getRequestDispatcher("/view/home.jsp");
        rd.forward(request, response);
    }

}
