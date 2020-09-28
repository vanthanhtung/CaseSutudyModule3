<%--
  Created by IntelliJ IDEA.
  User: vn
  Date: 9/25/2020
  Time: 10:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/duotone.css"
          integrity="sha384-R3QzTxyukP03CMqKFe0ssp5wUvBPEyy9ZspCB+Y01fEjhMwcXixTyeot+S40+AjZ" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/fontawesome.css"
          integrity="sha384-eHoocPgXsiuZh+Yy6+7DsKAerLXyJmu2Hadh4QYyt+8v86geixVYwFqUvMU8X90l" crossorigin="anonymous"/>
</head>
<body>

<div class="container">

    <div class="row" id="header">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">

            <!-- Indicators -->
            <ul class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ul>

            <!-- The slideshow -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="/image/adidas1.jpg" alt="Los Angeles" width="1100" height="400">
                </div>
                <div class="carousel-item">
                    <img src="/image/vans1.jpg" alt="Chicago" width="1100" height="400">
                </div>
                <div class="carousel-item">
                    <img src="/image/nike1.jpg" alt="New York" width="1100" height="400">
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>
    </div>

    <div class="row" id="navbar">
        <nav class="navbar navbar-expand-lg navbar-light bg-light" style="width: 100%">
            <a class="navbar-brand" href="/home?action=home"><i class="fas fa-home"></i>Trang chủ</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="/home?action=nike-product">Nike <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="/home?action=adidas-product">Adidas</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="/home?action=vans-product">Vans</a>
                    </li>
                </ul>

                <a class="navbar-brand" href="/home?action=home"><i class="fas fa-cart-plus"></i>Giỏ hàng</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <form class="form-inline my-2 my-lg-0" action="/home?action=search" method="post">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"
                           name="searchProductName">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </nav>
    </div>

    <div class="row" id="body">

        <table class="table table-hover table-bordered">
            <thead>
            <tr>
                <th>Img</th>
                <th>Name</th>
                <th>Amount</th>
                <th>Price</th>
                <th>Total</th>
                <th>Delete</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="item" items="${listOrder}" varStatus="loop">
                <tr>
                    <td><img src="${item.thumbnail}" class="card-img-top" alt style="width: 250px"></td>
                    <td>${item.productName}</td>
                    <td>
                        <input type="text" name="amount" placeholder="Enter amount">
                    </td>
                    <td>${item.price}</td>
                    <td></td>
                    <td>
                        <a class="btn btn-danger" href="productController?action=delete&id=${item.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="row">
        <div class="col"><input type="text" style="width: 100%" name="customerInfo" placeholder="Enter your information"></div>
        <div class="col"><a class="btn btn-danger" style="position: relative; right: 0px"
                            href="productController?action=delete&id=${item.id}">BUY</a></div>
    </div>
    <hr>

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
                        <h5 class="text-uppercase font-weight-bold">Hệ thống cửa hàng</h5>
                        <p>Cơ sở 1: 115 Lô TT04, Khu đô thị Moncity, Mỹ Đình, Từ Liêm, Hà Nội</p>
                        <p>SĐT 0999 999 999</p>
                        <p>Cơ sở 2: 69 Lê Duẩn, TP. Đà Nẵng</p>
                        <p>SĐT 0969 123 456</p>
                        <p>Cơ sở 3: 96 Quận 1, TP. Hồ Chí Minh</p>
                        <p>SĐT 0127 555 555</p>
                    </div>
                    <!-- Grid column -->

                    <hr class="clearfix w-100 d-md-none pb-3">

                    <!-- Grid column -->
                    <div class="col-md-6 mb-md-0 mb-3">

                        <!-- Content -->
                        <h5 class="text-uppercase font-weight-bold">Footer text 2</h5>
                        <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Optio deserunt fuga perferendis
                            modi earum
                            commodi aperiam temporibus quod nulla nesciunt aliquid debitis ullam omnis quos ipsam,
                            aspernatur id
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
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>