<%-- 
    Document   : viewCart
    Created on : Mar 8, 2022, 1:45:27 PM
    Author     : longtq
--%>
<%@page import="product.Category"%> <%@page import="utility.Utility"%>
<%@page import="product.Product"%> <%@page import="shopping.Cart"%> <%@page
    contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <link rel="icon"
                  href="https://img.icons8.com/color/480/shopee.png"
                  type="image/gif" sizes="16x16">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
            <link rel="stylesheet" href="./assets/css/cart.css">
            <link rel="stylesheet" href="./assets/css/base.css">
            <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
            <link rel="stylesheet" href="./assets/fonts/fontawesome-5.15.4/fontawesome-free-5.15.4-web/css/all.min.css">
            <title>Giỏ Hàng</title>
        </head>
        <body>
            <div class="main">
                <%@include file="header.jsp" %>
                <div class="container bg-gray container--have-products">
                    <% int total = 0;
                        Cart cart = (Cart) session.getAttribute("CART");
                        Utility utility = new Utility();
                        if (cart == null || cart.getCart().size() == 0) {
                    %>
                    <div class="container container--no-products bg-gray">
                        <div class="no-products mt-20">
                            <div class="img-no-product"
                                 style="background-image: url(https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg/cart/9bdd8040b334d31946f49e36beaf32db.png);">
                            </div>
                            <div class="title-no-product">Giỏ hàng của bạn còn trống</div>
                            <a href="user.jsp" class="pay-btn center">Mua ngay</a>
                        </div>
                    </div>
                    <% } else { %>
                    <div class="have-products">
                        <div class="grid">
                            <div class="shipping-alert mt-20">
                                <div class="grid__row">
                                    <svg height="12" viewBox="0 0 20 12" width="20" class="shopee-svg-icon _1NxVa_ icon-free-shipping">
                                    <g fill="none" fill-rule="evenodd" transform="">
                                    <rect fill="#00bfa5" fill-rule="evenodd" height="9" rx="1" width="12" x="4"></rect>
                                    <rect height="8" rx="1" stroke="#00bfa5" width="11" x="4.5" y=".5"></rect>
                                    <rect fill="#00bfa5" fill-rule="evenodd" height="7" rx="1" width="7" x="13" y="2"></rect>
                                    <rect height="6" rx="1" stroke="#00bfa5" width="6" x="13.5" y="2.5"></rect>
                                    <circle cx="8" cy="10" fill="#00bfa5" r="2"></circle>
                                    <circle cx="15" cy="10" fill="#00bfa5" r="2"></circle>
                                    <path
                                        d="m6.7082481 6.7999878h-.7082481v-4.2275391h2.8488017v.5976563h-2.1405536v1.2978515h1.9603297v.5800782h-1.9603297zm2.6762505 0v-3.1904297h.6544972v.4892578h.0505892c.0980164-.3134765.4774351-.5419922.9264138-.5419922.0980165 0 .2276512.0087891.3003731.0263672v.6210938c-.053751-.0175782-.2624312-.038086-.3762568-.038086-.5122152 0-.8758247.3017578-.8758247.75v1.8837891zm3.608988-2.7158203c-.5027297 0-.8536919.328125-.8916338.8261719h1.7390022c-.0158092-.5009766-.3446386-.8261719-.8473684-.8261719zm.8442065 1.8544922h.6544972c-.1549293.571289-.7050863.9228515-1.49238.9228515-.9864885 0-1.5903965-.6269531-1.5903965-1.6464843 0-1.0195313.6165553-1.6669922 1.5872347-1.6669922.9580321 0 1.5366455.6064453 1.5366455 1.6083984v.2197266h-2.4314412v.0351562c.0221328.5595703.373095.9140625.9169284.9140625.4110369 0 .6924391-.1376953.8189119-.3867187zm2.6224996-1.8544922c-.5027297 0-.853692.328125-.8916339.8261719h1.7390022c-.0158091-.5009766-.3446386-.8261719-.8473683-.8261719zm.8442064 1.8544922h.6544972c-.1549293.571289-.7050863.9228515-1.49238.9228515-.9864885 0-1.5903965-.6269531-1.5903965-1.6464843 0-1.0195313.6165553-1.6669922 1.5872347-1.6669922.9580321 0 1.5366455.6064453 1.5366455 1.6083984v.2197266h-2.4314412v.0351562c.0221328.5595703.373095.9140625.9169284.9140625.4110369 0 .6924391-.1376953.8189119-.3867187z"
                                        fill="#fff"></path>
                                    <path d="m .5 8.5h3.5v1h-3.5z" fill="#00bfa5"></path>
                                    <path d="m0 10.15674h3.5v1h-3.5z" fill="#00bfa5"></path>
                                    <circle cx="8" cy="10" fill="#047565" r="1"></circle>
                                    <circle cx="15" cy="10" fill="#047565" r="1"></circle>
                                    </g>
                                    </svg>
                                    <span class="shipping-text">Nhấn vào mục Mã giảm giá ở cuối trang để hưởng miễn phí vận chuyển bạn
                                        nhé!</span>
                                </div>
                            </div>
                        </div>

                        <div class="grid">
                            <div class="cart-title mt-20">
                                <div class="grid__row">
                                    <div class="grid__column-5">
                                        <span class="cart-text1">Sản Phẩm</span>
                                    </div>
                                    <div class="grid__column-5">
                                        <span class="cart-text">Đơn Giá</span>
                                        <span class="cart-text">Số Lượng</span>
                                        <span class="cart-text">Số Tiền</span>
                                        <span class="cart-text">Thao Tác</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="grid">
                            <div class="cart-shop mt-20">
                                <div class="grid__row">
                                    <div class="website-link">
                                        <span class="contain-icon1">
                                            <svg viewBox="0 0 24 11">
                                            <g fill="#fff" fill-rule="evenodd">
                                            <path
                                                d="M19.615 7.143V1.805a.805.805 0 0 0-1.611 0v5.377H18c0 1.438.634 2.36 1.902 2.77V9.95c.09.032.19.05.293.05.444 0 .805-.334.805-.746a.748.748 0 0 0-.498-.69v-.002c-.59-.22-.885-.694-.885-1.42h-.002zm3 0V1.805a.805.805 0 0 0-1.611 0v5.377H21c0 1.438.634 2.36 1.902 2.77V9.95c.09.032.19.05.293.05.444 0 .805-.334.805-.746a.748.748 0 0 0-.498-.69v-.002c-.59-.22-.885-.694-.885-1.42h-.002zm-7.491-2.985c.01-.366.37-.726.813-.726.45 0 .814.37.814.742v5.058c0 .37-.364.73-.813.73-.395 0-.725-.278-.798-.598a3.166 3.166 0 0 1-1.964.68c-1.77 0-3.268-1.456-3.268-3.254 0-1.797 1.497-3.328 3.268-3.328a3.1 3.1 0 0 1 1.948.696zm-.146 2.594a1.8 1.8 0 1 0-3.6 0 1.8 1.8 0 1 0 3.6 0z">
                                            </path>
                                            <path
                                                d="M.078 1.563A.733.733 0 0 1 .565.89c.423-.15.832.16 1.008.52.512 1.056 1.57 1.88 2.99 1.9s2.158-.85 2.71-1.882c.19-.356.626-.74 1.13-.537.342.138.477.4.472.65a.68.68 0 0 1 .004.08v7.63a.75.75 0 0 1-1.5 0V3.67c-.763.72-1.677 1.18-2.842 1.16a4.856 4.856 0 0 1-2.965-1.096V9.25a.75.75 0 0 1-1.5 0V1.648c0-.03.002-.057.005-.085z"
                                                fill-rule="nonzero"></path>
                                            </g>
                                            </svg>
                                        </span>
                                        <span class="shop-link">sachthamkhao.com.vn</span>
                                        <span class="contain-icon2">
                                            <svg viewBox="0 0 16 16" class="shopee-svg-icon _2KYoW7 ">
                                            <g fill-rule="evenodd">
                                            <path
                                                d="M15 4a1 1 0 01.993.883L16 5v9.932a.5.5 0 01-.82.385l-2.061-1.718-8.199.001a1 1 0 01-.98-.8l-.016-.117-.108-1.284 8.058.001a2 2 0 001.976-1.692l.018-.155L14.293 4H15zm-2.48-4a1 1 0 011 1l-.003.077-.646 8.4a1 1 0 01-.997.923l-8.994-.001-2.06 1.718a.5.5 0 01-.233.108l-.087.007a.5.5 0 01-.492-.41L0 11.732V1a1 1 0 011-1h11.52zM3.646 4.246a.5.5 0 000 .708c.305.304.694.526 1.146.682A4.936 4.936 0 006.4 5.9c.464 0 1.02-.062 1.608-.264.452-.156.841-.378 1.146-.682a.5.5 0 10-.708-.708c-.185.186-.445.335-.764.444a4.004 4.004 0 01-2.564 0c-.319-.11-.579-.258-.764-.444a.5.5 0 00-.708 0z">
                                            </path>
                                            </g>
                                            </svg>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="root">
                                <% for (Product product : cart.getCart().values()) {
                                        String categoryName = "";
                                        for (Category c : Utility.getListCategory()) {
                                            if (product.getCategoryID().equals(c.getCategoryID())) {
                                                categoryName = c.getCategoryName();
                                            }
                                        }
                                        total += product.getPrice()
                                                * product.getQuantity();%>
                                <div class="cart-buy">
                                    <div class="cart-buy__products">
                                        <div class="grid__row">
                                            <div class="grid__column-5">
                                                <div class="products-contain">
                                                    <div class="product-contain__img"
                                                         style="background-image: url(<%= product.getImage()%>)">
                                                    </div>
                                                    <div class="product-contain__text">
                                                        <div class="text-title"><%=product.getProductName()%>
                                                        </div>
                                                        <div class="lable-sell"
                                                             style="background-image: url(https://cf.shopee.vn/file/b9c2a9417893cd8fdc0aed0a96d50bfb);">
                                                        </div>
                                                        <div class="text-title1">
                                                            <img class="icon-sell"
                                                                 src="https://deo.shopeemobile.com/shopee/shopee-pcmall-live-sg/cart/91167e001db60b62d4f85c3e0ea919b6.png"
                                                                 alt="">
                                                            7 Ngày Miễn Phí Trả Hàng
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="grid__colum-5">
                                                <div class="container-title">
                                                    <div class="products-contain1">
                                                        <div class="price-old">108.300đ</div>
                                                        <div class="price-new"><%=product.getPrice()%>đ</div>
                                                    </div>
                                                    <div class="products-contain1">
                                                        <div class="quality"><input type="number" name="quantity"
                                                                                    value="<%=product.getQuantity()%>" class="quantity" /></div>
                                                    </div>

                                                    <div class="products-contain1">
                                                        <div class="price"> <%=product.getPrice() * product.getQuantity()%>đ</div>
                                                    </div>

                                                    <div class="products-contain1">
                                                        <div data-id="3" class="delete"><input type="hidden" name="productID"
                                                                                               value="<%=product.getProductID()%>" />
                                                            <input type="submit" name="action" value="UpdateCart" class="update" />
                                                            <a  href="MainController?action=DeleteCart&productID=<%=product.getProductID()%>"
                                                               class="delete">Delete</a></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <% }%>
                            </div>

                            <div class="voucher">
                                <svg fill="red" viewBox="0 -2 23 22" class="shopee-svg-icon1 _3m_0nP icon-voucher-line">
                                <g filter="url(#voucher-filter0_d)">
                                <mask id="a" fill="#fff">
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                          d="M1 2h18v2.32a1.5 1.5 0 000 2.75v.65a1.5 1.5 0 000 2.75v.65a1.5 1.5 0 000 2.75V16H1v-2.12a1.5 1.5 0 000-2.75v-.65a1.5 1.5 0 000-2.75v-.65a1.5 1.5 0 000-2.75V2z">
                                    </path>
                                </mask>
                                <path
                                    d="M19 2h1V1h-1v1zM1 2V1H0v1h1zm18 2.32l.4.92.6-.26v-.66h-1zm0 2.75h1v-.65l-.6-.26-.4.91zm0 .65l.4.92.6-.26v-.66h-1zm0 2.75h1v-.65l-.6-.26-.4.91zm0 .65l.4.92.6-.26v-.66h-1zm0 2.75h1v-.65l-.6-.26-.4.91zM19 16v1h1v-1h-1zM1 16H0v1h1v-1zm0-2.12l-.4-.92-.6.26v.66h1zm0-2.75H0v.65l.6.26.4-.91zm0-.65l-.4-.92-.6.26v.66h1zm0-2.75H0v.65l.6.26.4-.91zm0-.65l-.4-.92-.6.26v.66h1zm0-2.75H0v.65l.6.26.4-.91zM19 1H1v2h18V1zm1 3.32V2h-2v2.32h2zm-.9 1.38c0-.2.12-.38.3-.46l-.8-1.83a2.5 2.5 0 00-1.5 2.29h2zm.3.46a.5.5 0 01-.3-.46h-2c0 1.03.62 1.9 1.5 2.3l.8-1.84zm.6 1.56v-.65h-2v.65h2zm-.9 1.38c0-.2.12-.38.3-.46l-.8-1.83a2.5 2.5 0 00-1.5 2.29h2zm.3.46a.5.5 0 01-.3-.46h-2c0 1.03.62 1.9 1.5 2.3l.8-1.84zm.6 1.56v-.65h-2v.65h2zm-.9 1.38c0-.2.12-.38.3-.46l-.8-1.83a2.5 2.5 0 00-1.5 2.29h2zm.3.46a.5.5 0 01-.3-.46h-2c0 1.03.62 1.9 1.5 2.3l.8-1.84zM20 16v-2.13h-2V16h2zM1 17h18v-2H1v2zm-1-3.12V16h2v-2.12H0zm1.4.91a2.5 2.5 0 001.5-2.29h-2a.5.5 0 01-.3.46l.8 1.83zm1.5-2.29a2.5 2.5 0 00-1.5-2.3l-.8 1.84c.18.08.3.26.3.46h2zM0 10.48v.65h2v-.65H0zM.9 9.1a.5.5 0 01-.3.46l.8 1.83A2.5 2.5 0 002.9 9.1h-2zm-.3-.46c.18.08.3.26.3.46h2a2.5 2.5 0 00-1.5-2.3L.6 8.65zM0 7.08v.65h2v-.65H0zM.9 5.7a.5.5 0 01-.3.46l.8 1.83A2.5 2.5 0 002.9 5.7h-2zm-.3-.46c.18.08.3.26.3.46h2a2.5 2.5 0 00-1.5-2.3L.6 5.25zM0 2v2.33h2V2H0z"
                                    mask="url(#a)"></path>
                                </g>
                                <path clip-rule="evenodd"
                                      d="M6.49 14.18h.86v-1.6h-.86v1.6zM6.49 11.18h.86v-1.6h-.86v1.6zM6.49 8.18h.86v-1.6h-.86v1.6zM6.49 5.18h.86v-1.6h-.86v1.6z">
                                </path>
                                <defs>
                                <filter id="voucher-filter0_d" x="0" y="1" width="20" height="16" filterUnits="userSpaceOnUse"
                                        color-interpolation-filters="sRGB">
                                    <feFlood flood-opacity="0" result="BackgroundImageFix"></feFlood>
                                    <feColorMatrix in="SourceAlpha" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0">
                                    </feColorMatrix>
                                    <feOffset></feOffset>
                                    <feGaussianBlur stdDeviation=".5"></feGaussianBlur>
                                    <feColorMatrix values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.09 0"></feColorMatrix>
                                    <feBlend in2="BackgroundImageFix" result="effect1_dropShadow"></feBlend>
                                    <feBlend in="SourceGraphic" in2="effect1_dropShadow" result="shape"></feBlend>
                                </filter>
                                </defs>
                                </svg>
                                <span class="voucher-text">Shop Voucher giảm đến ₫20k</span>
                                <a href="#" class="voucher-text--link">Xem thêm voucher</a>
                            </div>
                            <div class="voucher">
                                <svg enable-background="new 0 0 15 15" viewBox="0 0 15 15" x="0" y="0"
                                     class="shopee-svg-icon1 _1m76cP icon-free-shipping-line">
                                <g>
                                <line fill="#07C1A6" stroke-linejoin="round" stroke-miterlimit="10" x1="8.6" x2="4.2" y1="9.8"
                                      y2="9.8"></line>
                                <circle cx="3" cy="11.2" fill="#07C1A6" r="2" stroke-miterlimit="10"></circle>
                                <circle cx="10" cy="11.2" fill="#07C1A6" r="2" stroke-miterlimit="10"></circle>
                                <line fill="#07C1A6" stroke-miterlimit="10" x1="10.5" x2="14.4" y1="7.3" y2="7.3"></line>
                                <polyline fill="#07C1A6" points="1.5 9.8 .5 9.8 .5 1.8 10 1.8 10 9.1" stroke-linejoin="round"
                                          stroke-miterlimit="10"></polyline>
                                <polyline fill="#07C1A6" points="9.9 3.8 14 3.8 14.5 10.2 11.9 10.2" stroke-linejoin="round"
                                          stroke-miterlimit="10"></polyline>
                                </g>
                                </svg>
                                <span class="voucher-text">Giảm ₫25.000 phí vận chuyển đơn tối thiểu ₫50.000</span>
                                <a href="#" class="voucher-text--link">Tìm hiểu thêm</a>
                            </div>
                            <div class="pay-title mt-20">
                                <svg fill="red" viewBox="0 -2 23 22" class="shopee-svg-icon1 _3m_0nP icon-voucher-line">
                                <g filter="url(#voucher-filter0_d)">
                                <mask id="a" fill="#fff">
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                          d="M1 2h18v2.32a1.5 1.5 0 000 2.75v.65a1.5 1.5 0 000 2.75v.65a1.5 1.5 0 000 2.75V16H1v-2.12a1.5 1.5 0 000-2.75v-.65a1.5 1.5 0 000-2.75v-.65a1.5 1.5 0 000-2.75V2z">
                                    </path>
                                </mask>
                                <path
                                    d="M19 2h1V1h-1v1zM1 2V1H0v1h1zm18 2.32l.4.92.6-.26v-.66h-1zm0 2.75h1v-.65l-.6-.26-.4.91zm0 .65l.4.92.6-.26v-.66h-1zm0 2.75h1v-.65l-.6-.26-.4.91zm0 .65l.4.92.6-.26v-.66h-1zm0 2.75h1v-.65l-.6-.26-.4.91zM19 16v1h1v-1h-1zM1 16H0v1h1v-1zm0-2.12l-.4-.92-.6.26v.66h1zm0-2.75H0v.65l.6.26.4-.91zm0-.65l-.4-.92-.6.26v.66h1zm0-2.75H0v.65l.6.26.4-.91zm0-.65l-.4-.92-.6.26v.66h1zm0-2.75H0v.65l.6.26.4-.91zM19 1H1v2h18V1zm1 3.32V2h-2v2.32h2zm-.9 1.38c0-.2.12-.38.3-.46l-.8-1.83a2.5 2.5 0 00-1.5 2.29h2zm.3.46a.5.5 0 01-.3-.46h-2c0 1.03.62 1.9 1.5 2.3l.8-1.84zm.6 1.56v-.65h-2v.65h2zm-.9 1.38c0-.2.12-.38.3-.46l-.8-1.83a2.5 2.5 0 00-1.5 2.29h2zm.3.46a.5.5 0 01-.3-.46h-2c0 1.03.62 1.9 1.5 2.3l.8-1.84zm.6 1.56v-.65h-2v.65h2zm-.9 1.38c0-.2.12-.38.3-.46l-.8-1.83a2.5 2.5 0 00-1.5 2.29h2zm.3.46a.5.5 0 01-.3-.46h-2c0 1.03.62 1.9 1.5 2.3l.8-1.84zM20 16v-2.13h-2V16h2zM1 17h18v-2H1v2zm-1-3.12V16h2v-2.12H0zm1.4.91a2.5 2.5 0 001.5-2.29h-2a.5.5 0 01-.3.46l.8 1.83zm1.5-2.29a2.5 2.5 0 00-1.5-2.3l-.8 1.84c.18.08.3.26.3.46h2zM0 10.48v.65h2v-.65H0zM.9 9.1a.5.5 0 01-.3.46l.8 1.83A2.5 2.5 0 002.9 9.1h-2zm-.3-.46c.18.08.3.26.3.46h2a2.5 2.5 0 00-1.5-2.3L.6 8.65zM0 7.08v.65h2v-.65H0zM.9 5.7a.5.5 0 01-.3.46l.8 1.83A2.5 2.5 0 002.9 5.7h-2zm-.3-.46c.18.08.3.26.3.46h2a2.5 2.5 0 00-1.5-2.3L.6 5.25zM0 2v2.33h2V2H0z"
                                    mask="url(#a)"></path>
                                </g>
                                <path clip-rule="evenodd"
                                      d="M6.49 14.18h.86v-1.6h-.86v1.6zM6.49 11.18h.86v-1.6h-.86v1.6zM6.49 8.18h.86v-1.6h-.86v1.6zM6.49 5.18h.86v-1.6h-.86v1.6z">
                                </path>
                                <defs>
                                <filter id="voucher-filter0_d" x="0" y="1" width="20" height="16" filterUnits="userSpaceOnUse"
                                        color-interpolation-filters="sRGB">
                                    <feFlood flood-opacity="0" result="BackgroundImageFix"></feFlood>
                                    <feColorMatrix in="SourceAlpha" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0">
                                    </feColorMatrix>
                                    <feOffset></feOffset>
                                    <feGaussianBlur stdDeviation=".5"></feGaussianBlur>
                                    <feColorMatrix values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.09 0"></feColorMatrix>
                                    <feBlend in2="BackgroundImageFix" result="effect1_dropShadow"></feBlend>
                                    <feBlend in="SourceGraphic" in2="effect1_dropShadow" result="shape"></feBlend>
                                </filter>
                                </defs>
                                </svg>
                                <span class="voucher-text">Shopee Voucher</span>
                                <a href="#" class="pay-voucher">Áp Dụng Mã Giảm Giá Ngay!</a>
                            </div>

                            <div class="pay-products">
                                <span class="pay-text">Phí giao hàng</span>
                                <select id="address" name="address" class="select-address">
                                    <option value="HCM">Hồ Chí Minh</option>
                                    <option value="LA">Long An</option>
                                    <option value="HN">Hà Nội</option>
                                    <option value="HP">Hải Phòng</option>
                                    <option value="CM">Cà Mau</option>
                                </select>
                                <span class="pay-price">0đ</span>
                            </div>

                            <div class="pay-products">
                                <span class="pay-text">Tổng thanh toán (<span class="quality-js">1</span> Sản phẩm)</span>
                                <span class="pay-price"><span class="pay-price--js"><%=total%></span>đ</span>
                                <form action="MainController">
                                    <input type="hidden" name="total" value="<%=total%>" />
                                    <button type="submit" name="action" value="Checkout" class="pay-btn">Mua Hàng</button>
                                </form>

                            </div>
                            <% String message = (String) request.getAttribute("MESSAGE");
                                if (message != null) {%>
                            <p class="error"><%= message%></p>
                            <% }
                                }%>
                        </div>
                    </div>
                </div>
                <div class="grid">
                    <div class="contain-products-sell">
                        <h2>CÓ THỂ BẠN CŨNG THÍCH</h2>
                        <div class="grid__row">
                            <div class="product-relate__list mt-20">
                                <div class="product-relate__hot-sell">
                                    <img class="product-relate__img"
                                         src="https://cf.shopee.vn/file/a5f04031f216b43cfcb80248e8df47f5_tn">
                                    <div class="product-relate__contain">
                                        <div class="product-relate__name">Sách - 4MK - J.D. Barker</div>
                                        <div class="product-relate__price">116.000đ</div>
                                    </div>
                                </div>
                                <div class="product-relate__hot-sell">
                                    <img class="product-relate__img"
                                         src="https://cf.shopee.vn/file/b755715026beeeb0d92fc4bae3d179da_tn">
                                    <div class="product-relate__contain">
                                        <div class="product-relate__name">Sách - Combo 6 cuốn truyện trinh thám</div>
                                        <div class="product-relate__price">632.000đ</div>
                                    </div>
                                </div>
                                <div class="product-relate__hot-sell">
                                    <img class="product-relate__img"
                                         src="https://cf.shopee.vn/file/58f5a3ca7bb500f6b285405deae46438_tn">
                                    <div class="product-relate__contain">
                                        <div class="product-relate__name">Sách - Dan Brown Digital</div>
                                        <div class="product-relate__price">396.000đ</div>
                                    </div>
                                </div>
                                <div class="product-relate__hot-sell">
                                    <img class="product-relate__img"
                                         src="https://cf.shopee.vn/file/5fa915c20d78f73981bfb050f12f76ca_tn">
                                    <div class="product-relate__contain">
                                        <div class="product-relate__name">Sách - Dan Brown The Lost</div>
                                        <div class="product-relate__price">396.000đ</div>
                                    </div>
                                </div>
                                <div class="product-relate__hot-sell">
                                    <img class="product-relate__img"
                                         src="https://cf.shopee.vn/file/ba0b62924bee14e0dd92aab1bbf91173_tn">
                                    <div class="product-relate__contain">
                                        <div class="product-relate__name">Sách - Trọn bộ Sherlock Holmes</div>
                                        <div class="product-relate__price">216.000đ</div>
                                    </div>
                                </div>
                                <div class="product-relate__hot-sell">
                                    <img class="product-relate__img"
                                         src="https://cf.shopee.vn/file/46000d7c078d6b2ebdcff87b5d8b48c2_tn">
                                    <div class="product-relate__contain">
                                        <div class="product-relate__name">Bàn phím cơ</div>
                                        <div class="product-relate__price">716.000đ</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%@include file="footer.jsp" %>
            </div>
        </body>
    </html>
