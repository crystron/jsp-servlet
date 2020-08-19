<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<div class="box-body">
    <div class="panel-heading">
        <a href="/admin/TL"  type="button" id="create" name="create"> Thêm Mới</a>
    </div>
    <table id="example2" class="table table-bordered table-hover">
        <caption style="text-align:center"><i><b>DANH SÁCH HÓA ĐƠN</b></i></caption>
        <thead>
        <tr>
            <th>Mã Hóa Đơn</th>
            <th>Ngày Lập</th>
            <th>Mã Khách Hàng</th>
            <th>Tồng Tiền</th>
            <th>Xem chi tiết</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${HoaDon}" var="item">
            <tr>
                <td>${item.maHD}</td>
                <td>${item.ngay}</td>
                <td>${item.maKH}</td>
                <td>${item.tongTien}</td>
                <td style="text-align:center;"><a href="/admin/cthd/${item.maHD}"><span class="glyphicon glyphicon-edit"></span></a></td>
            </tr>
        </c:forEach>
        </tbody>
        <tfoot>
        <tr></tr>
        </tfoot>
    </table>
</div>
