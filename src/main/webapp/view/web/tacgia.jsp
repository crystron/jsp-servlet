<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>

<table width="100%" border="1" cellspacing="0" cellpadding="0">
    <tr>
        <th>Mã Tác Giả</th>
        <th>Tên Tác Giả</th>
        <th>Sách</th>
    </tr>
    <c:forEach items="${TacGia}" var="item">
    <tr>

            <th>${item.maTG}</th>
            <th>${item.tenTG}</th>
    </tr>
    </c:forEach>
</table>