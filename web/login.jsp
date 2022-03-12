<%-- 
    Document   : login
    Created on : Mar 2, 2022, 1:22:45 PM
    Author     : longtq
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link rel="stylesheet" href="./assets/login.css" />
        <title>Abyssoque</title>
    </head>
    <body>
        <div class="main">
            <%@include file="headerLogin.jsp" %>
            <% String error = (String) request.getAttribute("ERROR");
               if (error
                       == null) {
                   error = "";
               }%>
            <div class="banner-sale">
                <div class="banner-sale__img"
                     style="background-image: url('https://cf.shopee.vn/file/88e9cc95389600adb8d95bc1e3330788');">
                    <form action="MainController" method="POST" id="form-register">
                        <div class="form-user">
                            <div class="form-user__title">Đăng Nhập</div>
                            <div class="form-user__contain">
                                <div class="contain-input">
                                    <input type="text" name="userID" class="input-element" placeholder="Email">
                                    <div class="input-notification"></div>
                                </div>
                                <div class="contain-input">
                                    <input type="password" name="password" class="input-element" placeholder="Mật khẩu">
                                    <div class="input-notification"></div>
                                </div>
                                <h3 class="error-message"><%=error%></h3>
                                <button type="submit" name="action" value="Login" class="btn">Đăng Nhập</button>
                                <div class="support">
                                    <a href="#" class="support__link">Quên mật khẩu</a>
                                    <a href="#" class="support__link">Đăng nhập với SMS</a>
                                </div>
                                <div class="border__saparate">
                                    <span class="saparate-title">Hoặc</span>
                                </div>
                                <div class="btn-social">
                                    <button class="btn1 btn-facebook">
                                        <i class="fab fa-facebook"></i>
                                        Facebook
                                    </button>
                                    <button class="btn1 btn-google">
                                        <i class="fab fa-google icon-gg"></i>
                                        Google
                                    </button>
                                    <button class="btn1 btn-apple">
                                        <i class="fab fa-apple"></i>
                                        Apple
                                    </button>
                                </div>
                                <div class="login">
                                    <span class="login__title">Bạn đã có tài khoản ?</span>
                                    <a href="./register.html" class="login__link">Đăng Ký</a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
