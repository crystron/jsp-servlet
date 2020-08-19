<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<div class="box-body">
    <div class="panel-heading">
        <a href="/admin/nhap-sach"  type="button" id="create" name="create"> Tạo mới phiếu nhập</a>
    </div>
    <table id="example2" class="table table-bordered table-hover">
        <caption style="text-align:center"><i><b>DANH SÁCH PHIẾU NHẬP</b></i></caption>
        <thead>
        <tr>
            <th>Mã Phiếu Nhập</th>
            <th>Mã Nhà Cung Cấp</th>
            <th>Ngày Lập</th>
            <th>Mã Nhân Viên Lập</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${PhieuNhap}" var="item">
            <tr>
                <td>${item.maPN}</td>
                <td>${item.maNCC}</td>
                <td>${item.ngayLap}</td>
                <td>{item.maNV}</td>
            </tr>
        </c:forEach>
        </tbody>
        <tfoot>
        <tr></tr>
        </tfoot>
    </table>
</div>