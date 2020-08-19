<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<form action="${pageContext.request.contextPath}/admin/create" method="post">
    <p>Mã tác giả
        <input type="text" name="maTG" />
    </p>

    <p>
        Tên tác giả
        <input type="text" name="tenTG" />
    </p>

    <p>
        Seaches
        <input type="text" name="seaches"/>
    </p>
    <input type="submit" name="submit" value="register" class="btn_dark_grey">{translate text='register'} /></p>
</form>