<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<div class="box-body">
    <div class="panel-heading">
        <a href="/admin/create/NXB"  type="button" id="create" name="create"> Thêm Mới</a>
    </div>
    <table id="example2" class="table table-bordered table-hover">
        <caption style="text-align:center"><i><b>DANH SÁCH NHÀ XUẤT BẢN</b></i></caption>
        <thead>
        <tr>
            <th>Mã NXB</th>
            <th>Tên NXB</th>
            <th>SDT</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${NXB}" var="item">
            <tr>
                <td>${item.maNXB}</td>
                <td>${item.tenNXB}</td>
                <td>${item.soDT}</td>
                <td style="text-align:center;"><a href="/admin/delete/${item.maNXB}"><span class="glyphicon glyphicon-edit"></span></a>--<a href="/admin/delete/${item.maNXB}" onclick="return confirm('Bạn có muốn xóa ?')"><span class="glyphicon glyphicon-trash"></span></a></td>
            </tr>
        </c:forEach>
        </tbody>
        <tfoot>
        <tr></tr>
        </tfoot>
    </table>
</div>