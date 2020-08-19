<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<div class="box-body">
    <div class="panel-heading">
        <a href="/admin/create/TL"  type="button" id="create" name="create"> Thêm Mới</a>
    </div>
    <table id="example2" class="table table-bordered table-hover">
        <caption style="text-align:center"><i><b>DANH SÁCH THỂ LOẠI</b></i></caption>
        <thead>
        <tr>
            <th>Mã Thể Loại</th>
            <th>Tên Thể Loại</th>
            <th>Mô tả</th>
            <th>Chức năng</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${TheLoai}" var="item">
            <tr>
                <td>${item.maTL}</td>
                <td>${item.tenTL}</td>
                <td>${item.moTa}</td>
                <td style="text-align:center;"><a href="/admin/edit/${item.maTL}"><span class="glyphicon glyphicon-edit"></span></a>--<a href="/admin/delete/${item.maTL}" onclick="return confirm('Bạn có muốn xóa ?')"><span class="glyphicon glyphicon-trash"></span></a></td>
            </tr>
        </c:forEach>
        </tbody>
        <tfoot>
        <tr></tr>
        </tfoot>
    </table>
</div>
