<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="model.Cart" %>
<%@ page import="model.Item" %>
<%@ page import="java.util.Map" %>
<header id="header">
    <!--header-->
    <div class="header_top">
        <!--header_top-->
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="contactinfo">
                        <ul class="nav nav-pills">
                            <li><a href="#"><i class="fa fa-phone"></i> 0384.799.610</a></li>
                            <li><a href="#"><i class="fa fa-envelope"></i>ltoanthanh@gmail.com</a></li>

                        </ul>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="social-icons pull-right">
                        <ul class="nav navbar-nav">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header_top-->

    <div class="header-middle">
        <!--header-middle-->
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="logo pull-left">
                        <a href="#"><img src="<c:url value='/assets/web/images/home/logo.png'/>" alt="" /></a>
                    </div>
                </div>
                <%
                    Cart cart = (Cart) session.getAttribute("cart");
                    if (cart == null){
                        cart = new Cart();
                        session.setAttribute("cart",cart);
                    }
                %>
                <div class="col-sm-8">
                    <div class="mainmenu pull-right">
                        <ul class="nav navbar-nav collapse navbar-collapse">
                            <li><a href="/trang-chu">Trang chủ</a></li>
                            <li><a href="/listSach">Sản phẩm</a></li>
                            <li><a href="#">Liên hệ</a></li>
                            <li><a href="#">Sách đã thêm: <%=cart.countItem()%> <i class="fa fa-book">  </i></a></li>
                            <li><a href="/dang-nhap">Đăng nhập</a></li>
                        </ul>
                    </div>
                    <div class="shop-menu pull-right">
                        <ul class="nav navbar-nav">
                            <li><a href="/thanh-toan"><i class="fa fa-crosshairs"></i> Checkout</a></li>
                            <li><a>
                                <%for (Map.Entry<String, Item> list : cart.getCartItems().entrySet()) {%>
                                <div class="cart_box">
                                    <div class="message">
                                        <div class="alert-close"> </div>
                                        <div class="list_desc">
                                            <h4>
                                                <a href="/CartServlet?command=remove&productID=<%=list.getValue().getSach().getMaSach()%>">
                                                    <%=list.getValue().getSach().getTenSach()%></a>
                                            </h4>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                                <%}%>
                                <div class="total">
                                    Tổng tiền: ${cart.total()} VNĐ
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="clearfix"></div>
                            </a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-middle-->

    <div class="header-bottom">
        <!--header-bottom-->
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                </div>

            </div>
        </div>
    </div><!--/header-bottom-->
</header><!--/header-->