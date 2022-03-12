<%-- 
    Document   : user
    Created on : Mar 2, 2022, 1:13:42 PM
    Author     : longtq
--%>

<%@page import="product.Category"%>
<%@page import="java.util.List"%>
<%@page import="utility.Utility"%>
<%@page import="product.Product"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopee Việt Nam | Mua Bán Trên Ứng Dụng Di Động hoặc Máy Tính</title>
        <link rel="icon" href="https://img.icons8.com/color/480/shopee.png" type="image/gif" sizes="16x16">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
        <link rel="stylesheet" href="./assets/css/main.css">
        <link rel="stylesheet" href="./assets/css/base.css">
        <link rel="stylesheet" href="./assets/fonts/fontawesome-5.15.4/fontawesome-free-5.15.4-web/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="main">
            <%@include file="header.jsp" %>
            <!--Begin body-->
            <div class="container">
                <div class="grid">
                    <div class="grid__row pt-36">
                        <div class="grid__column-2">
                            <nav class="category">
                                <h3 class="category__heading">
                                    <i class="category__icon fas fa-list"></i>
                                    Tất Cả Doanh Mục
                                </h3>

                                <ul class="category__list">
                                    <li class="category__item category__item--active">
                                        <a href="#" class="category__link">Tất Cả</a>
                                    </li>
                                    <li class="category__item">
                                        <a href="#" class="category__link">Rau Củ</a>
                                    </li>
                                    <li class="category__item">
                                        <a href="#" class="category__link">Trái Cây</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>

                        <div class="grid__column-8">
                            <div class="home-filter">
                                <span class="home-filter__lable">Sắp xếp theo</span>
                                <button class="home-filter__btn btn btn--primary">Phổ biến</button>
                                <button class="home-filter__btn btn">Mới nhất</button>
                                <button class="home-filter__btn btn">Bán chạy</button>

                                <div class="select-input">
                                    <span class="select-input__lable">Giá</span>
                                    <i class="fas fa-chevron-down"></i>

                                    <ul class="select-input__list">
                                        <li class="select-input__item">
                                            <div class="select-input__link high">Giá từ thấp đến cao</div>
                                        </li>
                                        <li class="select-input__item">
                                            <div class="select-input__link low">Giá từ cao đến thấp</div>
                                        </li>
                                    </ul>
                                </div>

                                <div class="home-filter__page">
                                    <span class="page-contain">
                                        <span class="page-contain__current">1</span>/5
                                    </span>

                                    <div class="page-control">
                                        <a href="" class="page-control-btn page-control-btn--disable">
                                            <i class="page-control-icon fas fa-chevron-left"></i>
                                        </a>
                                        <a href="" class="page-control-btn">
                                            <i class="page-control-icon fas fa-chevron-right"></i>
                                        </a>
                                    </div>
                                </div>

                            </div>

                            <div class="home-products">
                                <div class="grid__row home-products__contain">
                                    <%                                     String message = (String) request.getAttribute("MESSAGE");
                                        if (message != null) {
                                    %>
                                    <p class="message"><%= message%></p>

                                    <%
                                        }
                                        List<Product> listProduct = (List<Product>) session.getAttribute("PRODUCT_LIST");
                                        Utility utility = new Utility();
                                    %>
                                    <% if (listProduct == null || listProduct.size() == 0) {
                                    %>
                                    <h1>There are no product!</h1>
                                    <%  } else {
                                    %>
                                    <%if (listProduct.size() > 0) {
                                            int count = 1;
                                            for (Product product : listProduct) {
                                                String categoryName = "";
                                                for (Category c : utility.getListCategory()) {
                                                    if (product.getCategoryID().equals(c.getCategoryID())) {
                                                        categoryName = c.getCategoryName();
                                                    }
                                                }
                                    %>
                                    <div class="grid__column-2-5" data-price="">
                                        <a href="./products.html" onclick="getId(this);"
                                           class="home-product__item home-product__item--sold-lable" id="2">
                                            <div class="home-product__img"
                                                 style="background-image: url(<%= product.getImage()%>);">
                                            </div>
                                            <div class="home-product-contain-item">
                                                <h4 class="home-product__name"><%= product.getProductName()%></h4>
                                                <div class="home-product__price">
                                                    <span class="home-product__price-new"><%= product.getPrice()%>đ</span>
                                                </div>
                                                <div class="home-product__action">
                                                    <span class="home-product__favorite home-product__favorite--checked">
                                                        <i class="home-product__favorite--like far fa-heart"></i>
                                                        <i class="home-product__favorite--liked fas fa-heart"></i>
                                                    </span>
                                                    <div class="home-product__contain-review">
                                                        <span class="home-product__review">
                                                            <i class="home-product__star-checked fas fa-star"></i>
                                                            <i class="home-product__star-checked fas fa-star"></i>
                                                            <i class="home-product__star-checked fas fa-star"></i>
                                                            <i class="home-product__star-checked fas fa-star"></i>
                                                            <i class="home-product__star-checked fas fa-star"></i>
                                                        </span>
                                                        <span class="home-product__sold">Đã bán 196</span>
                                                    </div>
                                                </div>
                                                <div class="home-product__city">
                                                    <span class="home-product__origin">Hà Nội</span>
                                                </div>

                                                <div class="home-product__email">
                                                    <span class="home-product__email-text">Mail</span>
                                                </div>

                                                <div class="home-product__discount">
                                                    <span class="home-product__discount-percent">23%</span>
                                                    <span class="home-product__discount-lable">GIẢM</span>
                                                </div>
                                            </div>
                                            
                                            <div class="home-product__btn-buy">                                             
                                                <form action="MainController">
                                                <input type ="hidden" name="productID" value="<%=product.getProductID()%>" />
                                                <input type="submit" name="action" value="ADD TO CART" class="btn-buy__btn-title" />
                                                <i class="btn-buy__icon fas fa-search"></i>
                                            </form>
                                            </div>
                                        </a>
                                    </div>
                                    <%
                                            }
                                        } %>
                                </div>
                                <%
                                    }
                                %>
                            </div>

                            <ul class="pagination pagination--space">
                                <li class="pagination-item">
                                    <a href="" class="pagination-item__link">
                                        <i class="pagination-item__icon fas fa-chevron-left"></i>
                                    </a>
                                </li>

                                <li class="pagination-item pagination-item--active">
                                    <a href="" class="pagination-item__link">1</a>
                                </li>

                                <li class="pagination-item">
                                    <a href="" class="pagination-item__link">2</a>
                                </li>

                                <li class="pagination-item">
                                    <a href="" class="pagination-item__link">...</a>
                                </li>

                                <li class="pagination-item">
                                    <a href="" class="pagination-item__link">5</a>
                                </li>

                                <li class="pagination-item">
                                    <a href="" class="pagination-item__link">
                                        <i class="pagination-item__icon fas fa-chevron-right"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>

            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
