<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<div class="box-body">
    <div class="panel-heading">
        <a href="/admin/edit/${item.maSach}" type="button" id="create" name="create"> Thêm Mới</a>
    </div>
    <table id="example2" class="table table-bordered table-hover">
        <caption style="text-align:center"><i><b>DANH SÁCH ĐẦU SÁCH</b></i></caption>
        <thead>
        <tr>
            <th>Mã sách</th>
            <th>Tên sách</th>
            <th>Số lượng</th>
            <th>Giá bán</th>
            <th>Ảnh</th>
            <th>Ưu tiên</th>
            <th>Mã TL</th>
            <th>Mã NXB</th>
            <th>Mã tác giả</th>
            <th>Mã DM</th>
            <th>Thể loại</th>
        </tr>
        </thead>
        <tbody>
        <c:set var="item" value="${Sach}"/>
        <tr>
            <td>${item.maSach}</td>
            <td>${item.tenSach}</td>
            <td>
                <fmt:formatNumber type="number" maxFractionDigits="0" value="${item.giaTien}" /> VNĐ
            </td>
            <td>${item.sL}</td>
            <td> <img src="<c:url value='/assets/images/${item.hinh}'/>" style="width:70px;height:70px;" alt="Chưa có ảnh" /></td>
            <td>${item.uuTien}</td>
            <td>${item.maTL}</td>
            <td>${item.maNXB}</td>
            <td>${item.maTG}</td>
            <td>${item.maDM}</td>
            <td>${item.tenTL}</td>
        </tr>
        </tbody>
        <tfoot>
        <tr></tr>
        </tfoot>
    </table>
</div>
