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
<%--    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">--%>
<%--        <ol class="carousel-indicators">--%>
<%--            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>--%>
<%--            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>--%>
<%--            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>--%>
<%--        </ol>--%>
<%--        <div class="carousel-inner" role="listbox">--%>
<%--            <!-- Slide One - Set the background image for this slide in the line below -->--%>
<%--            <div class="carousel-item active" style="background-image: url('/image/img2.jpg')">--%>
<%--                <div class="carousel-caption d-none d-md-block">--%>
<%--                    <h2 class="display-4">First Slide</h2>--%>
<%--                    <p class="lead">This is a description for the first slide.</p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- Slide Two - Set the background image for this slide in the line below -->--%>
<%--            <div class="carousel-item" style="background-image: url('/image/img2.jpg')">--%>
<%--                <div class="carousel-caption d-none d-md-block">--%>
<%--                    <h2 class="display-4">Second Slide</h2>--%>
<%--                    <p class="lead">This is a description for the second slide.</p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- Slide Three - Set the background image for this slide in the line below -->--%>
<%--            <div class="carousel-item" style="background-image: url('/image/img2.jpg')">--%>
<%--                <div class="carousel-caption d-none d-md-block">--%>
<%--                    <h2 class="display-4">Third Slide</h2>--%>
<%--                    <p class="lead">This is a description for the third slide.</p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">--%>
<%--            <span class="carousel-control-prev-icon" aria-hidden="true"></span>--%>
<%--            <span class="sr-only">Previous</span>--%>
<%--        </a>--%>
<%--        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">--%>
<%--            <span class="carousel-control-next-icon" aria-hidden="true"></span>--%>
<%--            <span class="sr-only">Next</span>--%>
<%--        </a>--%>
<%--    </div>--%>
<%--    <section class="py-5">--%>
<%--        <div class="container">--%>
<%--            <h1 class="display-4">Full Page Image Slider</h1>--%>
<%--            <p class="lead">The background images for the slider are set directly in the HTML using inline CSS. The images in this snippet are from <a href="/image/img2.jpg">Unsplash</a>, taken by <a href="/image/img2.jpg">Joanna Kosinska</a>!</p>--%>
<%--        </div>--%>
<%--    </section>--%>
     </div>

     <div class="row" id="navbar">
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
             <a class="navbar-brand" href="#">Navbar</a>
             <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                 <span class="navbar-toggler-icon"></span>
             </button>

             <div class="collapse navbar-collapse" id="navbarSupportedContent">
                 <ul class="navbar-nav mr-auto">
                     <li class="nav-item active">
                         <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link" href="#">Link</a>
                     </li>
                     <li class="nav-item dropdown">
                         <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                             Dropdown
                         </a>
                         <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                             <a class="dropdown-item" href="#">Action</a>
                             <a class="dropdown-item" href="#">Another action</a>
                             <div class="dropdown-divider"></div>
                             <a class="dropdown-item" href="#">Something else here</a>
                         </div>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                     </li>
                 </ul>
                 <form class="form-inline my-2 my-lg-0">
                     <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                     <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                 </form>
             </div>
         </nav>
     </div>

     <div class="row" id="body">
         <div class="card" style="width: 18rem;">
             <img src="/image/img1.jpg" class="card-img-top" alt="...">
             <div class="card-body">
                 <h5 class="card-title">Card title</h5>
                 <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                 <a href="#" class="btn btn-primary">Go somewhere</a>
             </div>
         </div>
         <div class="card" style="width: 18rem;">
             <img src="/image/img1.jpg" class="card-img-top" alt="...">
             <div class="card-body">
                 <h5 class="card-title">Card title</h5>
                 <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                 <a href="#" class="btn btn-primary">Go somewhere</a>
             </div>
         </div>
         <div class="card" style="width: 18rem;">
             <img src="/image/img1.jpg" class="card-img-top" alt="...">
             <div class="card-body">
                 <h5 class="card-title">Card title</h5>
                 <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                 <a href="#" class="btn btn-primary">Go somewhere</a>
             </div>
         </div>
         <div class="card" style="width: 18rem;">
             <img src="/image/img1.jpg" class="card-img-top" alt="...">
             <div class="card-body">
                 <h5 class="card-title">Card title</h5>
                 <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                 <a href="#" class="btn btn-primary">Go somewhere</a>
             </div>
         </div>
         <div class="card" style="width: 18rem;">
             <img src="/image/img1.jpg" class="card-img-top" alt="...">
             <div class="card-body">
                 <h5 class="card-title">Card title</h5>
                 <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                 <a href="#" class="btn btn-primary">Go somewhere</a>
             </div>
         </div>
         <div class="card" style="width: 18rem;">
             <img src="/image/img1.jpg" class="card-img-top" alt="...">
             <div class="card-body">
                 <h5 class="card-title">Card title</h5>
                 <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                 <a href="#" class="btn btn-primary">Go somewhere</a>
             </div>
         </div>
         <div class="card" style="width: 18rem;">
             <img src="/image/img1.jpg" class="card-img-top" alt="...">
             <div class="card-body">
                 <h5 class="card-title">Card title</h5>
                 <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                 <a href="#" class="btn btn-primary">Go somewhere</a>
             </div>
         </div>
         <div class="card" style="width: 18rem;">
             <img src="/image/img1.jpg" class="card-img-top" alt="...">
             <div class="card-body">
                 <h5 class="card-title">Card title</h5>
                 <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                 <a href="#" class="btn btn-primary">Go somewhere</a>
             </div>
         </div>
         <div class="card" style="width: 18rem;">
             <img src="/image/img1.jpg" class="card-img-top" alt="...">
             <div class="card-body">
                 <h5 class="card-title">Card title</h5>
                 <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                 <a href="#" class="btn btn-primary">Go somewhere</a>
             </div>
         </div>
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