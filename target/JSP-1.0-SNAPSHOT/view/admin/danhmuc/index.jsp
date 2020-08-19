<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<div class="box-body">
    <div class="panel-heading">
        Thêm mới
    </div>
    <table id="example2" class="table table-bordered table-hover">
        <caption style="text-align:center"><i><b>DANH SÁCH DANH MỤC</b></i></caption>
        <thead>
        <tr>
            <th>Mã danh mục</th>
            <th>Tên danh mục</th>
            <th>MetaTitle</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${DanhMuc}" var="item">
            <tr>
                <td>${item.maDM}</td>
                <td>${item.tenDM}</td>
                <td>${item.metaTitle}</td>
                <td style="text-align:center;"><a href="/admin/delete/${item.maDM}"><span class="glyphicon glyphicon-edit"></span></a>--<a href="/admin/delete/${item.maDM}" onclick="return confirm('Bạn có muốn xóa ?')"><span class="glyphicon glyphicon-trash"></span></a></td>
            </tr>
        </c:forEach>
        </tbody>
        <tfoot>
        <tr></tr>
        </tfoot>
    </table>
</div>