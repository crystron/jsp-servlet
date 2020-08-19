<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<div class="box-body">
    <div class="panel-heading">
        <a href="/admin/edit/${item.maTG}" type="button" id="create" name="create"> Thêm Mới</a>
    </div>
    <table id="example2" class="table table-bordered table-hover">
        <caption style="text-align:center"><i><b>DANH SÁCH TÁC GIẢ</b></i></caption>
        <thead>
        <tr>
            <th>Mã Tác Giả</th>
            <th>Tên Tác Giả</th>
            <th>Seaches</th>
        </tr>
        </thead>
        <tbody>
        <c:set var="item" value="${TacGia}"/>
        <tr>
            <td>${item.maTG}</td>
            <td>${item.tenTG}</td>
            <td>${item.seaches}</td>
        </tr>
        </tbody>
        <tfoot>
        <tr></tr>
        </tfoot>
    </table>
</div>
