<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>Test</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/admin/example" method="post">
    <p>Mã thể loại
        <input type="text" name="maTL" /></p>

    <p>Tên thể loại
        <input type="text" name="tenTL" /></p>

    <p>CheckBox
        <input type="checkbox" name="agree" /> Agree?</p>
    <p>Submit button.
        <input type="submit" name="submit" value="register" class="btn_dark_grey">{translate text='register'} /></p>
</form>
</body>
</html>
