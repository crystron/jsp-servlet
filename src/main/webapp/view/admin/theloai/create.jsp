<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<form action="${pageContext.request.contextPath}/admin/create" method="post">
    <p>Mã thể loại
        <input type="text" name="maTL" />
    </p>

    <p>
        Tên thể loại
        <input type="text" name="tenTL" />
    </p>

    <p>
        Mô tả
        <input type="text" name="moTa"/>
    </p>
    <input type="hidden" value="TheLoai" name="action">
    <input type="submit" name="submit" value="Tạo mới" class="btn_dark_grey"></p>
</form>