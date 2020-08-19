<%@ page import="java.net.URLEncoder" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Authority</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="<c:url value = '/assets/login/images/icons/favicon.ico'/>" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<c:url value = '/assets/login/vendor/bootstrap/css/bootstrap.min.css'/>">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<c:url value = '/assets/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css'/>">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<c:url value = '/assets/login/vendor/animate/animate.css'/>">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<c:url value = '/assets/login/vendor/css-hamburgers/hamburgers.min.css'/>">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<c:url value = '/assets/login/vendor/select2/select2.min.css'/>">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<c:url value = '/assets/login/css/util.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value = '/assets/login/css/main.css'/>">
</head>
<body>

<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">
            <div class="login100-pic js-tilt" data-tilt>
                <img src="<c:url value = '/assets/login/images/hh2.jpg'/>" alt="IMG">
            </div>
            <form class="login100-form validate-form" action="${pageContext.request.contextPath}/dang-nhap" method="post">
                    <span class="login100-form-title">
                        Đăng Nhập
                    </span>
                <div class="center">
                </div>
                <div class="wrap-input100">
                    <input class="input100" type="text" required="yes" maxlength="20" name="TenTK" placeholder="Tài Khoản">
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                    </span>
                </div>

                <div class="wrap-input100">
                    <input class="input100" type="password" required="yes" maxlength="20" name="MatKhau" placeholder="Mật Khẩu">
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </span>
                </div>

                <div class="checkbox">
                    <label>
                        <input name="remember" type="checkbox" value="Remember Me">Ghi nhớ tài khoản
                    </label>
                </div>
                <!-- Change this to a button or input when using this as a form -->

                <div class="container-login100-form-btn">
                    <button type="submit"  class="btn btn-lg btn-success btn-block">Đăng Nhập</button>
                    <a href="~/Register/Index" class="btn btn-info" role="button">Đăng Kí</a>
                </div>
            </form>
        </div>
    </div>
</div>



<!--===============================================================================================-->
<script src="<c:url value = '/assets/login/vendor/jquery/jquery-3.2.1.min.js'/>"></script>
<!--===============================================================================================-->
<script src="<c:url value = '/assets/login/vendor/bootstrap/js/popper.js'/>"></script>
<script src="<c:url value = '/assets/login/vendor/bootstrap/js/bootstrap.min.js'/>"></script>
<!--===============================================================================================-->
<script src="<c:url value = '/assets/login/vendor/select2/select2.min.js'/>"></script>
<!--===============================================================================================-->
<script src="<c:url value = '/assets/login/vendor/tilt/tilt.jquery.min.js'/>"></script>
<script>
    $('.js-tilt').tilt({
        scale: 1.1
    })
</script>
<!--===============================================================================================-->
<script src="<c:url value = '/assets/login/js/main.js'/>"></script>

</body>
</html>