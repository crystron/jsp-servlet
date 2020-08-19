<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<form action="${pageContext.request.contextPath}/admin/create" method="post">
    <p>Mã Danh Mục
        <input type="number" name="maDM" />
    </p>

    <p>
        Tên Danh Mục
        <input type="number" name="tenDM" />
    </p>

    <p>
        MetaTitle
        <input type="text" name="metaTitle"/>
    </p>
        <input type="submit" name="submit" value="register" class="btn_dark_grey">{translate text='register'} /></p>
</form>