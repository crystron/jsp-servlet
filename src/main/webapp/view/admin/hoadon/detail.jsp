<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<div class="box-body">
    <table id="example2" class="table table-bordered table-hover">
        <caption style="text-align:center"><i><b>CHI TIẾT HÓA ĐƠN</b></i></caption>
        <thead>
        <tr>
            <th>Mã Hóa Đơn</th>
            <th>Mã Sách</th>
            <th>Số Lượng</th>
            <th>Khuyễn Mãi</th>
            <th>Giá Tiền</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${CTHD}" var="item">
        <tr>
            <td>${item.maHD}</td>
            <td>${item.maSach}</td>
            <td>${item.sL}</td>
            <td>${item.khuyenMai} %</td>
            <td>${item.giaTien}</td>
        </tr>
        </c:forEach>
        </tbody>
        <tfoot>
        <tr></tr>
        </tfoot>
    </table>
</div>