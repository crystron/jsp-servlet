<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<div class="box-body">
    <div class="panel-heading">
        <a href="/admin/edit/${item.maDM}" type="button" id="create" name="create"> Cập Nhật</a>
    </div>
    <table id="example2" class="table table-bordered table-hover">
        <caption style="text-align:center"><i><b>DANH SÁCH ĐẦU SÁCH</b></i></caption>
        <thead>
        <tr>
            <th>Mã danh mục</th>
            <th>Tên danh mục</th>
            <th>MetaTitle</th>
        </tr>
        </thead>
        <tbody>
        <c:set var="item" value="${DanhMuc}"/>
        <tr>
            <td>${item.maDM}</td>
            <td>${item.tenDM}</td>
            <td>${item.metaTitle}</td>
        </tr>
        </tbody>
        <tfoot>
        <tr></tr>
        </tfoot>
    </table>
</div>
