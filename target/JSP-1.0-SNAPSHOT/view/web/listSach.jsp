<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<div class="features_items">
        <h2 class="title text-center">Danh sách sản phẩm</h2>
        <c:forEach items="${Sach}" var="item">
        <div class="col-sm-3">
                <div class="product-image-wrapper">
                        <div class="single-products">
                                <div class="productinfo text-center">
                                        <a href="/Sach/detail/${item.maSach}"><img src="<c:url value='/assets/images/${item.hinh}'/>" style="width:70px;height:70px;" alt="Chưa có ảnh" /></a>
                                        <h2><fmt:formatNumber type="number" maxFractionDigits="0" value="${item.giaTien}" /> VNĐ</h2>
                                        <p>${item.tenSach}</p>
                                        <a href="/CartServlet?command=plus&productID=${item.maSach}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào rỏ hàng</a>
                                </div>

                        </div>
                </div>
        </div>
        </c:forEach>
</div>