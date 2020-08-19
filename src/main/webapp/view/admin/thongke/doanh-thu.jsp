<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<form action="${pageContext.request.contextPath}/admin/ThongKe" method="get">
    <div class="box-body">
        <div class="panel-heading">
            <input type="number" name="thang" min="1" max ="12" value="10"> Nhập tháng
            <input type="number" name="nam" min="2000" max ="2050" value="2019"> Nhập năm
            <span class="input-group-btn">
                    <button class="btn btn-social-icon" type="submit">Xem</button>
            </span>
            <h1>Tổng doanh thu: ${requestScope.dt} VNĐ</h1>
        </div>
    </div>
</form>