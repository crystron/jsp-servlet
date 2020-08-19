<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<div class="box-body">
    <div class="panel-heading">
        <a href="/admin/create/TG"  type="button" id="create" name="create"> Thêm Mới</a>
    </div>
    <table id="example2" class="table table-bordered table-hover">
        <caption style="text-align:center"><i><b>DANH SÁCH TÁC GIẢ</b></i></caption>
        <thead>
        <tr>
            <th>Mã tác giả</th>
            <th>Tên tác giả</th>
            <th>Địa chỉ</th>
            <th>Chức năng</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${TacGia}" var="item">
            <tr>
                <td>${item.maTG}</td>
                <td>${item.tenTG}</td>
                <td style="text-align:center;"><a href="#"><span class="glyphicon glyphicon-edit"></span></a>--<a href="#" onclick="return confirm('Bạn có muốn xóa ?')"><span class="glyphicon glyphicon-trash"></span></a></td>
            </tr>
        </c:forEach>
        </tbody>
        <tfoot>
        <tr></tr>
        </tfoot>
    </table>
</div>