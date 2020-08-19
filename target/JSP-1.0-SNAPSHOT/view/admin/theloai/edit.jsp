<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<form action="${pageContext.request.contextPath}/admin/edit" method="post">
<div class="box-body">
    <div class="panel-heading">
        <input type="submit" name="submit" value="Đồng ý sửa" class="btn_dark_grey" onclick="return confirm('Bạn đã chắc chắn ?')"> </p>
    </div>
    <table id="example2" class="table table-bordered table-hover">
        <caption style="text-align:center"><i><b>Chỉnh sửa thể loại</b></i></caption>
        <thead>
        <tr>
            <th>Mã Thể Loại</th>
            <th>Tên Thể Loại</th>
            <th>Mô tả</th>
        </tr>
        </thead>
        <tbody>
        <c:set var="item" value="${TheLoai}"/>
        <tr>
            <td><input type="text" name="maTL" value="${item.maTL}" readonly/></td>
            <td><input type="text" name="tenTL" value="${item.tenTL}"></td>
            <td><input type="text" name="moTa" value="${item.moTa}"/></td>
        </tr>
        </tbody>
        <tfoot>
        <tr></tr>
        </tfoot>
    </table>
</div>
</form>
