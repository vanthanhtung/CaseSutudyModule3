<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: vn
  Date: 9/24/2020
  Time: 11:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
</head>
<body>
 <div class="container">

     <div class="row" id="header">
         <div class="card bg-dark text-white">
             <img class="card-img" src="/image/img2.jpg" alt="Card image">
             <div class="card-img-overlay">
                 <h5 class="card-title">Card title</h5>
                 <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                 <p class="card-text">Last updated 3 mins ago</p>
             </div>
         </div>
     </div>

     <div class="row" id="navbar">
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
             <a class="navbar-brand" href="#">Trang chủ</a>
             <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                 <span class="navbar-toggler-icon"></span>
             </button>

             <div class="collapse navbar-collapse" id="navbarSupportedContent">
                 <ul class="navbar-nav mr-auto">
                     <li class="nav-item active">
                         <a class="nav-link" href="#">Nike <span class="sr-only">(current)</span></a>
                     </li>
                     <li class="nav-item active">
                         <a class="nav-link" href="#">Adidas</a>
                     </li>
                     <li class="nav-item active">
                         <a class="nav-link" href="#">Vans</a>
                     </li>
                 </ul>
                 <form class="form-inline my-2 my-lg-0" action="/home?action=search" method="post">
                     <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                     <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                 </form>
             </div>
         </nav>
     </div>

     <div class="row" id="body">
         <c:forEach var="product" items="${products}">

             <div class="card-body">
                 <img src="${product.thumbnail}" class="card-img-top" alt style="width: 250px">
                 <h5 class="card-title">${product.productName}</h5>
                 <h5 class="card-title">Price $${product.price}</h5>
                 <p class="card-text">${product.description}</p>
                 <a href="#" class="btn btn-primary">Add to cart</a>
             </div>
         </c:forEach>

     </div> <hr>

     <div class="row" id="footer">
         <!-- Footer -->
         <footer class="page-footer font-small teal pt-4">

             <!-- Footer Text -->
             <div class="container-fluid text-center text-md-left">

                 <!-- Grid row -->
                 <div class="row">

                     <!-- Grid column -->
                     <div class="col-md-6 mt-md-0 mt-3">

                         <!-- Content -->
                         <h5 class="text-uppercase font-weight-bold">Footer text 1</h5>
                         <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Expedita sapiente sint, nulla, nihil
                             repudiandae commodi voluptatibus corrupti animi sequi aliquid magnam debitis, maxime quam recusandae
                             harum esse fugiat. Itaque, culpa?</p>

                     </div>
                     <!-- Grid column -->

                     <hr class="clearfix w-100 d-md-none pb-3">

                     <!-- Grid column -->
                     <div class="col-md-6 mb-md-0 mb-3">

                         <!-- Content -->
                         <h5 class="text-uppercase font-weight-bold">Footer text 2</h5>
                         <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Optio deserunt fuga perferendis modi earum
                             commodi aperiam temporibus quod nulla nesciunt aliquid debitis ullam omnis quos ipsam, aspernatur id
                             excepturi hic.</p>

                     </div>
                     <!-- Grid column -->

                 </div>
                 <!-- Grid row -->

             </div>
             <!-- Footer Text -->

             <!-- Copyright -->
             <div class="footer-copyright text-center py-3">© 2020 Copyright:
                 <a href="https://mdbootstrap.com/"> MDBootstrap.com</a>
             </div>
             <!-- Copyright -->

         </footer>
         <!-- Footer -->
     </div>

 </div>
</body>
</html>
<script src="/css/bootstrap.min.js"></script>