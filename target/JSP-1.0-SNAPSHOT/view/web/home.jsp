<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<section id="slider">
    <!--slider-->
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#slider-carousel" data-slide-to="1"></li>
                        <li data-target="#slider-carousel" data-slide-to="2"></li>
                    </ol>

                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="col-sm-6">
                                <h1><span>E</span>-SHOPPER</h1>
                                <h2>Free E-Commerce Template</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                                <button type="button" class="btn btn-default get">Get it now</button>
                            </div>
                            <div class="col-sm-6">
                                <img src="<c:url value = '/assets/web/images/home/girl1.jpg'/>" class="girl img-responsive" alt="" />
                                <img src="<c:url value = '/assets/web/images/home/pricing.png'/>" class="pricing" alt="" />
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-sm-6">
                                <h1><span>E</span>-SHOPPER</h1>
                                <h2>100% Responsive Design</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                                <button type="button" class="btn btn-default get">Get it now</button>
                            </div>
                            <div class="col-sm-6">
                                <img src="<c:url value = '/assets/web/images/home/girl2.jpg'/>" class="girl img-responsive" alt="" />
                                <img src="<c:url value = '/assets/web/images/home/pricing.png'/>" class="pricing" alt="" />
                            </div>
                        </div>

                        <div class="item">
                            <div class="col-sm-6">
                                <h1><span>E</span>-SHOPPER</h1>
                                <h2>Free Ecommerce Template</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                                <button type="button" class="btn btn-default get">Get it now</button>
                            </div>
                            <div class="col-sm-6">
                                <img src="<c:url value = '/assets/web/images/home/girl3.jpg'/>" class="girl img-responsive" alt="" />
                                <img src="<c:url value = '/assets/web/images/home/pricing.png'/>" class="pricing" alt="" />
                            </div>
                        </div>

                    </div>

                    <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                        <i class="fa fa-angle-left"></i>
                    </a>
                    <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                        <i class="fa fa-angle-right"></i>
                    </a>
                </div>

            </div>
        </div>
    </div>
</section><!--/slider-->
<div class="features_items">
    <h2 class="title text-center">Sản phẩm bán chạy</h2>
    <c:forEach items="${Top}" var="item">
            <div class="col-sm-3">
                <div class="product-image-wrapper">
                    <div class="single-products">
                        <div class="productinfo text-center">
                            <a href="#"><img src="<c:url value='/assets/images/${item.hinh}'/>" style="width:70px;height:70px;" alt="Chưa có ảnh" /></a>
                            <h2><fmt:formatNumber type="number" maxFractionDigits="0" value="${item.giaTien}" /> VNĐ</h2>
                            <p>${item.tenSach}</p>
                            <a href="/CartServlet?command=plus&productID=${item.maSach}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào rỏ hàng</a>
                        </div>
                    </div>
                </div>
            </div>
    </c:forEach>
</div><!--features_items-->
<div class="features_items">
    <h2 class="title text-center">Sản phẩm mới</h2>
    <c:forEach items="${Sach}" var="item">
     <c:if test="${item.uuTien == 3}">
      <div class="col-sm-3">
        <div class="product-image-wrapper">
            <div class="single-products">
                <div class="productinfo text-center">
                    <a href="#"><img src="<c:url value='/assets/images/${item.hinh}'/>" style="width:70px;height:70px;" alt="Chưa có ảnh" /></a>
                    <h2><fmt:formatNumber type="number" maxFractionDigits="0" value="${item.giaTien}" /> VNĐ</h2>
                    <p>${item.tenSach}</p>
                    <a href="/CartServlet?command=plus&productID=${item.maSach}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào rỏ hàng</a>
                </div>
            </div>
        </div>
      </div>
     </c:if>
    </c:forEach>
</div><!--features_items-->

<div class="features_items">
    <h2 class="title text-center">Danh sách sản phẩm</h2>
    <c:forEach items="${Sach}" var="item">
        <c:if test="${item.uuTien == 2}">
            <div class="col-sm-3">
                <div class="product-image-wrapper">
                    <div class="single-products">
                        <div class="productinfo text-center">
                            <a href="#"><img src="<c:url value='/assets/images/${item.hinh}'/>" style="width:70px;height:70px;" alt="Chưa có ảnh" /></a>
                            <h2><fmt:formatNumber type="number" maxFractionDigits="0" value="${item.giaTien}" /> VNĐ</h2>
                            <p>${item.tenSach}</p>
                            <a href="/CartServlet?command=plus&productID=${item.maSach}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào rỏ hàng</a>
                        </div>
                    </div>
                </div>
            </div>
        </c:if>
    </c:forEach>
</div>
