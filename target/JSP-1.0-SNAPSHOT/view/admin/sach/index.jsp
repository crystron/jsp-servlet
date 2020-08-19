<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<div class="box-body">
    <div class="panel-heading">
        <a href="/admin/create/Sach"  type="button" id="create" name="create"> Thêm Mới</a>
    </div>
    <table id="example2" class="table table-bordered table-hover">
        <caption style="text-align:center"><i><b>DANH SÁCH SẢN PHẨM</b></i></caption>
        <thead>
        <tr>
            <th>Tên sản phẩm</th>
            <th>Giá bán</th>
            <th>Số lượng</th>
            <th>Ảnh</th>
            <th>Chức năng</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${Sach}" var="item">
                <tr>
                    <td>${item.tenSach}</td>
                    <td>
                        <fmt:formatNumber type="number" maxFractionDigits="0" value="${item.giaTien}" /> VNĐ
                    </td>
                    <td>${item.sL}</td>
                    <td> <img src="<c:url value='/assets/images/${item.hinh}'/>" style="width:70px;height:70px;" alt="Chưa có ảnh" /></td>
                    <td style="text-align:center;"><a href="/admin/delete/${item.maSach}"><span class="glyphicon glyphicon-edit"></span></a>--<a href="/admin/delete/${item.maSach}" onclick="return confirm('Bạn có muốn xóa ?')"><span class="glyphicon glyphicon-trash"></span></a></td>
                </tr>
        </c:forEach>
        </tbody>
        <tfoot>
        <tr></tr>
        </tfoot>
    </table>
</div>
