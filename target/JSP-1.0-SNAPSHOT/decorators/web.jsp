<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title><dec:title default="Trang chủ"/></title>
    <link href="<c:url value = '/assets/web/css/bootstrap.min.css'/>" rel="stylesheet">
    <link href="<c:url value = '/assets/web/css/font-awesome.min.css'/>" rel="stylesheet">
    <link href="<c:url value = '/assets/web/css/prettyPhoto.css'/>" rel="stylesheet">
    <link href="<c:url value = '/assets/web/css/price-range.css'/>" rel="stylesheet">
    <link href="<c:url value = '/assets/web/css/animate.css'/>" rel="stylesheet">
    <link href="<c:url value = '/assets/web/css/main.css'/>" rel="stylesheet">
    <link href="<c:url value = '/assets/web/css/responsive.css'/>" rel="stylesheet">

    <link rel="shortcut icon" href="<c:url value = '/assets/web/images/ico/favicon.ico'/>">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<c:url value = '/assets/web/images/ico/apple-touch-icon-144-precomposed.png'/>">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<c:url value = '/assets/web/images/ico/apple-touch-icon-114-precomposed.png'/>">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<c:url value = '/assets/web/images/ico/apple-touch-icon-72-precomposed.png'/>">
</head>
<body>
    <!--Header-->
    <%@include file="/assets/web/header.jsp"%>
    <!--Header-->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-9 padding-right">
                    <dec:body/>
                </div>
            </div>
        </div>
    </section>
    <!--Footer-->
    <%@include file="/assets/web/footer.jsp"%>
    <!--Footer-->
    <script src="<c:url value = '/assets/web/js/jquery.js'/>"> </script>
    <script src="<c:url value = '/assets/web/js/bootstrap.min.js'/>"> </script>
    <script src="<c:url value = '/assets/web/js/jquery.scrollUp.min.js'/>"> </script>
    <script src="<c:url value = '/assets/web/js/price-range.js'/>"></script>
    <script src="<c:url value = '/assets/web/js/jquery.prettyPhoto.js'/>"> </script>
    <script src="<c:url value='/assets/web/js/main.js'/>"></script>
    <script>
        var div = document.createElement('div');
        div.className = 'fb-customerchat';
        div.setAttribute('page_id', '107481440767140');
        div.setAttribute('ref', '');
        document.body.appendChild(div);
        window.fbMessengerPlugins = window.fbMessengerPlugins || {
            init: function () {
                FB.init({
                    appId: '1678638095724206',
                    autoLogAppEvents: true,
                    xfbml: true,
                    version: 'v3.3'
                });
            }, callable: []
        };
        window.fbAsyncInit = window.fbAsyncInit || function () {
            window.fbMessengerPlugins.callable.forEach(function (item) { item(); });
            window.fbMessengerPlugins.init();
        };
        setTimeout(function () {
            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) { return; }
                js = d.createElement(s);
                js.id = id;
                js.src = "//connect.facebook.net/en_US/sdk/xfbml.customerchat.js";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
        }, 0);
    </script>
</body>
</html>
